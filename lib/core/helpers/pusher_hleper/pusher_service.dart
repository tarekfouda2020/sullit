import 'dart:async';
import 'dart:developer';

import 'package:dart_pusher_channels/dart_pusher_channels.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../constants/app_constants.dart';
import 'pusher_auth_helper.dart';

typedef PusherEventHandler = void Function(ChannelReadEvent event);

@lazySingleton
class PusherService {
  final int _port = 443;
  final String _hostScheme = 'wss';

  PusherChannelsClient? _client;
  Channel? _channel;

  StreamSubscription<ChannelReadEvent>? _eventSubscription;
  StreamSubscription<void>? _connectionSubscription;

  String? _subscribedChannel;
  PusherEventHandler? _onEvent;

  bool _connected = false;

  Future<void> subscribeToPusher({required String channelName, required PusherEventHandler onEvent}) async {
    log('Pusher subscribe requested: $channelName');

    _onEvent = onEvent;

    if (_subscribedChannel == channelName) {
      log('Pusher already subscribed to: $channelName');
      return;
    }

    await _unsubscribeFromCurrentChannel();

    final PusherChannelsClient client = _ensureClient();

    final bool isPrivate = channelName.startsWith('private-');

    log('Pusher creating channel: $channelName');
    log('Pusher channel type: ${isPrivate ? 'private' : 'public'}');

    if (isPrivate) {
      _channel = client.privateChannel(
        channelName,
        authorizationDelegate: _ReverbAuthDelegate(),
      );
    } else {
      _channel = client.publicChannel(channelName);
    }

    _subscribedChannel = channelName;

    _eventSubscription = _channel!.bindToAll().listen(
      _handleEvent,
      onError: (error, stackTrace) {
        log('Pusher event stream error: $error');
      },
      onDone: () {
        log('Pusher event stream closed');
      },
    );

    _connectionSubscription ??= client.onConnectionEstablished.listen(
          (_) {
        _connected = true;

        log('Pusher connection established');
        log('Pusher subscribing to: $_subscribedChannel');

        _channel?.subscribeIfNotUnsubscribed();
      },
      onError: (error, stackTrace) {
        _connected = false;
        log('Pusher connection stream error: $error');
      },
      onDone: () {
        _connected = false;
        log('Pusher connection stream closed');
      },
    );

    await client.connect();

    log('Pusher connect completed: $channelName');
  }

  Future<void> disconnectPusher() async {
    log('Pusher disconnect requested');

    await _unsubscribeFromCurrentChannel();

    await _connectionSubscription?.cancel();
    _connectionSubscription = null;

    _connected = false;

    await _client?.disconnect();
    _client?.dispose();

    _client = null;
    _onEvent = null;

    log('Pusher disconnected');
  }

  PusherChannelsClient _ensureClient() {
    if (_client != null) {
      return _client!;
    }

    log('Pusher creating client');

    _client = PusherChannelsClient.websocket(
      options: _pusherChannelsOptions,
      connectionErrorHandler: (exception, trace, refresh) {
        _connected = false;

        log('Pusher connection error: $exception');

        refresh();
      },
    );

    return _client!;
  }

  PusherChannelsOptions get _pusherChannelsOptions {
    return PusherChannelsOptions.fromHost(
      scheme: _hostScheme,
      port: _port,
      host: ApiNames.domain,
      key: AppConstants.instance.pusherApiKey,
    );
  }

  void _handleEvent(ChannelReadEvent event) {
    if (event.name.startsWith('pusher')) {
      return;
    }

    log('===>>>> EVENT FIRES <<<<<=====');
    log(
      '===>>>> time when receive =>> '
          '${DateFormat('hh:mm:ss a').format(DateTime.now())} <<<<<=====',
    );
    log('===>>>> event data =>> ${event.data} <<<<<=====');
    log('<<<<=========== event name is ${event.name} =====>>>');

    _onEvent?.call(event);
  }

  Future<void> _unsubscribeFromCurrentChannel() async {
    if (_subscribedChannel != null) {
      log(
        'Pusher unsubscribing from: $_subscribedChannel',
      );
    }

    await _eventSubscription?.cancel();
    _eventSubscription = null;

    _channel?.unsubscribe();
    _channel = null;

    _subscribedChannel = null;
  }
}

class _ReverbAuthDelegate implements EndpointAuthorizableChannelAuthorizationDelegate<PrivateChannelAuthorizationData> {
  @override
  EndpointAuthFailedCallback? get onAuthFailed => (exception, trace) {
        log('Pusher auth failed: $exception');
      };

  @override
  Future<PrivateChannelAuthorizationData> authorizationData(String socketId, String channelName) async {
    final result = await getIt<PusherAuthHelper>().onAuthorizer(channelName, socketId, null);
    return PrivateChannelAuthorizationData(
      authKey: '${result['auth'] ?? ''}',
    );
  }
}

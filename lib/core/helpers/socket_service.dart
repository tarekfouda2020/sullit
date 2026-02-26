import 'dart:developer';

import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketService {

  SocketService._();

  static final SocketService instance = SocketService._();


  late final io.Socket _socket;

  bool get isConnected => _socket.connected == true;

  bool get isDisConnected => _socket.disconnected == true;

  void init({
    required String url,
    Map<String, dynamic>? queryParams,
  }) {
    _socket = io.io(
      url,
      io.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .setQuery(queryParams ?? {})
          .build(),
    );

    _socket.connect();

    _socket.onConnect((_) {
      log('Socket connected: ${_socket.id}');
    });

    _socket.onDisconnect((_) {
      log('Socket disconnected');
    });

    _socket.onConnectError((error) {
      log('Socket connectError: $error');
    });
    _socket.onError((error) {
      log('Socket error: $error');
    });
  }

  void on(String event, void Function(dynamic data) handler) {
    _socket.on(event, (data) => handler(data));
  }


  void dispose() {
    _socket.dispose();
  }
}
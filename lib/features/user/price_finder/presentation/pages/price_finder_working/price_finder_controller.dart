part of 'price_finder_imports.dart';

class PriceFinderController {
  late final AnimationController animationController;

  late final Animation<double> scaleAnimation;

  final GenericBloc<PriceComparisonDomainModel?> priceComparisonCubit =
      GenericBloc<PriceComparisonDomainModel?>(null);

  final int priceComparisonsId;

  PriceFinderController(this.priceComparisonsId, PriceComparisonDomainModel? data) {
    priceComparisonCubit.onUpdateData(data);
  }

  void initPusher(BuildContext context) {
    getIt<PusherService>().subscribeToPusher(
      channelName: PusherChannelsNames.instance.priceComparison(priceComparisonsId),
      onEvent: (event) => _onPusherEvent(context,event),
    );
  }

  void _onPusherEvent(BuildContext context,ChannelReadEvent event) {
    if (event.name != PusherEventsNames.instance.priceComparisonUpdated) return;

    try {
      var payload = _parseEventPayload(event.data);
      var current = priceComparisonCubit.state.data;
      if (current == null) return;

      current.applyPusherPayload(payload);
      priceComparisonCubit.onUpdateData(current);
      if(current.isCompleted){
        _goToNextStep(context);
      }
    } catch (e) {
      log('==>>> price comparison pusher error ${e.toString()} ===');
    }
  }

  Map<String, dynamic> _parseEventPayload(dynamic data) {
    if (data is String) {
      return Map<String, dynamic>.from(jsonDecode(data) as Map);
    }
    if (data is Map) {
      return Map<String, dynamic>.from(data);
    }
    throw FormatException('Unsupported pusher payload type: ${data.runtimeType}');
  }

  void init(TickerProvider vsync, BuildContext context) {
    initPusher(context);
    animationController = AnimationController(
      vsync: vsync,
      duration: const Duration(
        milliseconds: 1300,
      ),
    )..repeat(reverse: true);

    scaleAnimation = Tween<double>(
      begin: 0.94,
      end: 1.06,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );

  }


  void _goToNextStep(BuildContext context) {
    AutoRouter.of(context).push(
      const PriceComparisonPageRoute(),
    );
  }

  void dispose() {
    animationController.dispose();
    priceComparisonCubit.close();
    getIt<PusherService>().disconnectPusher();
  }
}

part of 'price_finder_imports.dart';

class PriceFinderController {
  final GenericBloc<int> currentStep = GenericBloc(0);

  late final AnimationController animationController;

  late final Animation<double> scaleAnimation;

  final List<String> steps = [
    'Checking nearby stores in Al Mushrif...',
    'Finding available prices across 6 local stores...',
    'Comparing prices & calculating best savings...',
  ];

  Timer? _timer;

  void init(TickerProvider vsync, BuildContext context) {
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

    _startSteps(context);
  }

  void _startSteps(BuildContext context) {
    _timer = Timer.periodic(
      const Duration(seconds: 2),
      (_) {
         int step = currentStep.state.data;

        if (step < steps.length - 1) {
          currentStep.onUpdateData(step + 1);
        } else {
          _timer?.cancel();

          _goToNextStep(context);
        }
      },
    );
  }

  void _goToNextStep(BuildContext context) {
    AutoRouter.of(context).push(
      const PriceComparisonPageRoute(),
    );
  }

  void dispose() {
    _timer?.cancel();
    animationController.dispose();
    currentStep.close();
  }
}

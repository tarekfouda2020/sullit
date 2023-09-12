part of 'sale_details_w_imports.dart';

class BuildTimer extends StatefulWidget {
  final DateTime time;

  const BuildTimer({Key? key, required this.time}) : super(key: key);

  @override
  State<BuildTimer> createState() => _BuildTimerState();
}

class _BuildTimerState extends State<BuildTimer> {
  final GenericBloc<TimerEntity> timerCubit = GenericBloc(TimerEntity());

  @override
  void initState() {
    timerCubit.state.data.initDuration(widget.time);
    timerCubit.state.data.startTimer(
      callback: () => timerCubit.onUpdateData(timerCubit.state.data),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<TimerEntity>, GenericState<TimerEntity>>(
      bloc: timerCubit,
      builder: (context, state) {
        return Padding(
          padding: Dimens.paddingVertical5PX,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildTimeItem(
                time: state.data.days(),
              ),
              BuildTimeItem(
                time: state.data.hours(),
              ),
              BuildTimeItem(
                time: state.data.minutes(),
              ),
              BuildTimeItem(
                time: state.data.seconds(),
              ),
            ],
          ),
        );
      },
    );
  }
}

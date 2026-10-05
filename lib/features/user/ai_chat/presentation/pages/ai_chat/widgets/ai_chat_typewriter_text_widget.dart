part of 'widgets_imports.dart';

class AiChatTypewriterTextWidget extends StatefulWidget {
  final String text;
  final TextStyle style;
  final Color selectionColor;
  final ScrollController scroll;

  const AiChatTypewriterTextWidget({
    super.key,
    required this.text,
    required this.style,
    required this.selectionColor,
    required this.scroll,
  });

  @override
  State<AiChatTypewriterTextWidget> createState() =>
      _AiChatTypewriterTextWidgetState();
}

class _AiChatTypewriterTextWidgetState extends State<AiChatTypewriterTextWidget> {
  final GenericBloc<int> shownBloc = GenericBloc<int>(0);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _start());
  }

  @override
  void didUpdateWidget(AiChatTypewriterTextWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text) _start();
  }

  @override
  void dispose() {
    _timer?.cancel();
    shownBloc.close();
    super.dispose();
  }

  void _start() {
    _timer?.cancel();
    final length = widget.text.characters.length;
    if (!mounted) return;
    if (MediaQuery.disableAnimationsOf(context) || length == 0) {
      shownBloc.onUpdateData(length);
      return;
    }
    shownBloc.onUpdateData(0);
    final step = length > 500 ? 4 : length > 180 ? 2 : 1;
    _timer = Timer.periodic(const Duration(milliseconds: 16), (_) {
      if (!mounted) return;
      final next = shownBloc.state.data + step;
      if (next >= length) {
        shownBloc.onUpdateData(length);
        _timer?.cancel();
        return;
      }
      shownBloc.onUpdateData(next);
      _follow();
    });
  }

  void _follow() {
    final scroll = widget.scroll;
    if (!scroll.hasClients) return;
    final position = scroll.position;
    if (position.maxScrollExtent - position.pixels > 48) return;
    scroll.jumpTo(position.maxScrollExtent);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: shownBloc,
      builder: (context, state) {
        return SelectableText(
          widget.text.characters.take(state.data).toString(),
          selectionColor: widget.selectionColor,
          style: widget.style,
        );
      },
    );
  }
}

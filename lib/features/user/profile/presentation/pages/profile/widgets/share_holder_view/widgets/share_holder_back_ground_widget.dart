part of 'share_holder_view_widgets_imports.dart';

class ShareHolderBackGroundWidget extends StatelessWidget {
  const ShareHolderBackGroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return isKeyboardVisible
          ? SingleChildScrollView(
              child: _body(context),
            )
          : _body(context);
    });
  }

  Widget _body(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.5,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(21)),
              gradient: LinearGradient(
                  begin: AlignmentDirectional.centerStart,
                  end: AlignmentDirectional.centerEnd,
                  colors: [
                    Color(0xffFAC950),
                    Color(0xff654D11),
                  ])),
        ),
      ],
    );
  }
}

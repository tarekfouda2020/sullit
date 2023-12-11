part of 'active_account_imports.dart';

class ActiveAccount extends StatefulWidget {
  final String phoneOrEmail;
  final bool fromForget;

  const ActiveAccount({
    Key? key,
    required this.phoneOrEmail,
    this.fromForget = false,
  }) : super(key: key);

  @override
  _ActiveAccountState createState() => _ActiveAccountState();
}

class _ActiveAccountState extends State<ActiveAccount> {
  late ActiveAccountController controller;

  @override
  void initState() {
    controller = ActiveAccountController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SingleChildScrollView(
          padding: Dimens.paddingH24V40,
          child: Column(
            children: [
              const BuildAuthAppBar(),
              BuildHeaderTitle(title: tr('enterVerifyCode')),
              BuildPinField(onComplete: controller.onComplete),
              BuildActiveTimer(
                controller: controller,
                phone: widget.phoneOrEmail,
              ),
              BuildActiveButton(
                controller: controller,
                phone: widget.phoneOrEmail,
                isForget: widget.fromForget,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

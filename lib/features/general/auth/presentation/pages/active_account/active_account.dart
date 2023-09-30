part of 'active_account_imports.dart';

class ActiveAccount extends StatefulWidget {
  final String phone ;
  const ActiveAccount({Key? key, required this.phone}) : super(key: key);

  @override
  _ActiveAccountState createState() => _ActiveAccountState();
}

class _ActiveAccountState extends State<ActiveAccount> {
  final ActiveAccountController controller = ActiveAccountController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      appBar: const BuildAuthAppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: [
          BuildHeaderTitle(title: tr('enterVerifyCode')),
          BuildPinField(onComplete: controller.onComplete),
          BuildActiveButton(controller: controller, phone: widget.phone,),
        ],
      ),
    );
  }
}

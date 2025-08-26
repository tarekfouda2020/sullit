part of 'change_password_imports.dart';


class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {


  final ChangePasswordController controller = ChangePasswordController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar:  DefaultAppBar(title: tr("changePassword")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(
          children: [
            Gaps.vGap20,
            ChangePasswordFormWidget(controller: controller),
            Gaps.vGap20,
            DefaultButton(
              title: tr("confirmChange"),
              onTap: () => controller.changePassword(context),
              color: context.colors.primary,
              textColor: context.colors.white,
              margin: EdgeInsets.zero,
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

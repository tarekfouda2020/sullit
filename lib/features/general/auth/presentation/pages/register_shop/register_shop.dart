part of 'register_shop_imports.dart';

class RegisterShop extends StatefulWidget {
  const RegisterShop({Key? key}) : super(key: key);

  @override
  State<RegisterShop> createState() => _RegisterShopState();
}

class _RegisterShopState extends State<RegisterShop> {
  final RegisterShopController registerShopController =
      RegisterShopController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildAuthAppBar(),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          child: Column(
            children: [
              const BuildHeaderLogo(),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  tr('personalInfo'),
                  style: AppTextStyle.s16_w500(color: context.colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              Gaps.vGap20,
              RegisterShopFields(
                  registerShopController: registerShopController),
              RegisterShopButton(registerShopController: registerShopController)
            ],
          ),
        ),
      ),
    );
  }
}

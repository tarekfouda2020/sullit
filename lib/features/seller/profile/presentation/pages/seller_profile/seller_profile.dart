part of 'seller_profile_imports.dart';

class SellerProfile extends StatefulWidget {
  const SellerProfile({Key? key}) : super(key: key);

  @override
  State<SellerProfile> createState() => _SellerProfileState();
}

class _SellerProfileState extends State<SellerProfile> {
  SellerProfileController sellerProfileController = SellerProfileController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  DefaultAppBar(title: tr("manageProfile"), showBack: true),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          child: Column(
            children: [
              BuildSellerProfileImage(
                  sellerProfileController: sellerProfileController),
              Gaps.vGap20,
              BuildSellerProfileBasicInfo(
                  sellerProfileController: sellerProfileController),
              Gaps.vGap10,
              BuildSellerProfilePaymentSetting(
                sellerProfileController: sellerProfileController,
              ),
              DefaultButton(
                  title: "Update Profile ",
                  height: 35.h,
                  fontSize: 12,
                  color: context.colors.darkPurple,
                  borderRadius: BorderRadius.circular(7).r,
                  margin: const EdgeInsets.symmetric(vertical: 10).r,
                  onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}

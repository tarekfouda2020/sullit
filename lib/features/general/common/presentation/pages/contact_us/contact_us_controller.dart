part of'contact_us_imports.dart';
class ContactUsController{
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController message = TextEditingController();
  TextEditingController subject = TextEditingController();

  ContactUsController(BuildContext context) {
    getInitialData(context);
  }

  void getInitialData(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    if (user != UserDomainModel()) {
      name.text = user?.name ?? "";
      email.text = user?.email ?? "";
      phone.text = user?.phone ?? "";
    }
  }

  Future<void> contactUs() async {
    if (formKey.currentState!.validate()) {
      var params = _contactUsParams();
      var data = await SetContactUs().call(params);
      if (data) {
        CustomToast.showSimpleToast(
          msg: tr('msgSent'),
          type: ToastType.success,
        );
      }
    }
  }

  ContactUsParams _contactUsParams() {
    return ContactUsParams(
      name: name.text,
      email: email.text,
      phone: phone.text,
      message: message.text,
      title: subject.text,
    );
  }
}
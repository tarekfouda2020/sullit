part of 'contact_us_imports.dart';

class ContactUsController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();
  final GenericBloc<String> contactUsCubit = GenericBloc("");
  final GenericBloc<Country?> countryCubit = GenericBloc(CountryPickerHelper.defaultCountry());
  final GenericBloc<List<ContactUsSocialModel>> contactUsSocialCubit = GenericBloc<List<ContactUsSocialModel>>([]);
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController message = TextEditingController();
  TextEditingController subject = TextEditingController();

  ContactUsController(BuildContext context) {
    // getContactUs();
    getInitialData(context);
    getContactSocials();
  }

  void getContactUs() async {
    var result = await GetContactUs().call(NoParams());
    contactUsCubit.onUpdateData(result);
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

  Future<void> getContactSocials() async {
    await GetContactUsSocials().call(NoParams()).then((value) {
      if (value.isNotEmpty) {
        contactUsSocialCubit.onUpdateData(value);
      }else{
        contactUsSocialCubit.onUpdateData([]);
      }
    });
  }
}

part of 'contact_us_imports.dart';

class ContactUsController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();
  final GenericBloc<String> contactUsCubit = GenericBloc("");
  final GenericBloc<Country?> countryCubit = GenericBloc(CountryPickerHelper.defaultCountrySync() as Country?);
  final GenericBloc<List<ContactUsSocialModel>> contactUsSocialCubit = GenericBloc<List<ContactUsSocialModel>>([]);
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController message = TextEditingController();
  TextEditingController subject = TextEditingController();

  ContactUsController(BuildContext context) {
    getInitialData(context);
    getContactSocials();
  }

  void getContactUs() async {
    var result = await GetContactUs().call(NoParams());
    contactUsCubit.onUpdateData(result);
  }

  Future<void> getInitialData(BuildContext context) async {
    var user = context.read<UserCubit>().state.model;
    print(user?.toJson());
    if (user != UserDomainModel()) {
      name.text = user?.name ?? "";
      email.text = user?.email ?? "";
      phone.text = user?.phone ?? "";
      await _initializeCountryFromUser(context, user);
    }
  }

  Future<void> _initializeCountryFromUser(BuildContext context, UserDomainModel? user) async {
    if (user?.countryCode != null && user!.countryCode!.isNotEmpty) {
      try {
        final country = await CountryPickerHelper.getCountryByCallingCode(context, user.countryCode!);
        if (country != null) {
          countryCubit.onUpdateData(country);
        } else {
          print("No country found for calling code: ${user.countryCode}");
        }
      } catch (e) {
        print("Error getting country for calling code ${user.countryCode}: $e");
      }
    }
  }

  Future<void> contactUs(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var params = _contactUsParams();
      await SetContactUs().call(params).then((value) {
        if (value) {
          // subject.clear();
          // message.clear();
          CustomToast.showSimpleToast(
            msg: tr('msgSent'),
            type: ToastType.success,
          );
          AutoRouter.of(context).pop();
        }
      });
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
      } else {
        contactUsSocialCubit.onUpdateData([]);
      }
    });
  }
}

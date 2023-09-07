part of 'contact_us_imports.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  late ContactUsController controller;

  @override
  void initState() {
    controller = ContactUsController(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: 'Contact Us'),
      body: Column(
        children: [
          BuildContactUsFields(contactUsData: controller),
          BuildContactUsButton(controller: controller)
        ],
      ),
    );
  }
}

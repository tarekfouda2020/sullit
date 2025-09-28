part of 'privacy_imports.dart';

class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  late PrivacyController controller;

  @override
  void initState() {
    controller = PrivacyController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('privacyPolicy')),
      body: BlocBuilder<GenericBloc<String?>, GenericState<String?>>(
        bloc: controller.privacyBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return SingleChildScrollView(
              padding: Dimens.paddingAll15PX,
              child: Column(
                children: [
                  const BuildHeaderLogo(marginBottom: 0,marginTop: 5),
                  CustomHtmlWidget(data: state.data!),
                ],
              ),
            );
          } else {
            return ListView(
              padding: Dimens.paddingAll15PX,
              children: List.generate(
                80,
                (index) => BuildShimmerItem(
                  borderRadius: BorderRadius.circular(3),
                  height: 5,
                  margin: const EdgeInsets.symmetric(vertical: 3),
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

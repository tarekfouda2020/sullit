part of 'support_policy_imports.dart';

class SupportPolicy extends StatefulWidget {
  const SupportPolicy({Key? key}) : super(key: key);

  @override
  State<SupportPolicy> createState() => _SupportPolicyState();
}

class _SupportPolicyState extends State<SupportPolicy> {
  late SupportPolicyController controller;

  @override
  void initState() {
    controller = SupportPolicyController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Support Policy"),
      body: BlocBuilder<GenericBloc<String?>, GenericState<String?>>(
        bloc: controller.supportPrivacyBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return SingleChildScrollView(
              padding: Dimens.paddingAll15PX,
              child: Html(
                data: state.data,
                style: {
                  "body": Style(
                    color: Colors.black,
                    margin: Margins.zero,
                    fontSize: FontSize(
                      12,
                    ),
                    lineHeight: const LineHeight(2),
                    fontWeight: FontWeight.w400,
                  ),
                },
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

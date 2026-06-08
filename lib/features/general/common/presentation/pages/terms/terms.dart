part of 'terms_imports.dart';

class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  late TermsController controller;

  @override
  void initState() {
    controller = TermsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('termsAndConditions')),
      body: BlocBuilder<GenericBloc<String?>, GenericState<String?>>(
        bloc: controller.termsCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return SingleChildScrollView(
              padding: Dimens.paddingAll15PX,
              child: Column(
                children: [
                  const BuildHeaderLogo(marginBottom: 0, marginTop: 5),
                  CustomHtmlWidget(data: state.data!),
                ],
              ),
            );
          } else {
            return ListView(
              padding: Dimens.paddingAll15PX,
              children: List.generate(
                100,
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

part of 'support_imports.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  late SupportController controller;

  @override
  void initState() {
    controller = SupportController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: DefaultAppBar(title: tr("support")),
        body: Column(
          children: [
            Flexible(
              child: BlocBuilder<GenericBloc<List<SupportMsg>>,
                  GenericState<List<SupportMsg>>>(
                bloc: controller.msgCubit,
                builder: (context, state) {
                  if (state is GenericUpdateState) {
                    return ListView.builder(
                      itemCount: state.data.length,
                      itemBuilder: (_, index) => BuildSupportMsgItem(
                        model: state.data[index],
                      ),
                    );
                  } else {
                    return const BuildLoadingSupportMessages();
                  }
                },
              ),
            ),
            BuildSupportFields(controller: controller)
          ],
        ),
        // bottomSheet: ,
      ),
    );
  }
}

part of 'more_widgets_imports.dart';

class BuildLangBottomSheet extends StatelessWidget {
  final MoreController controller;

  const BuildLangBottomSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<LangDomainModel>>, GenericState<List<LangDomainModel>>>(
      bloc: controller.languagesCubit,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(state.data.length, (index) {
              LangDomainModel item = state.data[index];
              return Column(
                children: [
                  InkWell(
                    onTap: () => controller.setUserLang(context, item),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        item.name,
                        style: AppTextStyle.s14_w600(color: context.colors.black),),
                    ),
                  ),
                  if(index != state.data.length-1)
                  Divider(thickness: 1, color: context.colors.greyWhite)
                ],
              );
            }),
          ),
        );
      },
    );
  }
}

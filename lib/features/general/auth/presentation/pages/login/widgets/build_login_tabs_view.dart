part of 'login_widgets_imports.dart';

class BuildLoginTabsView extends StatelessWidget {
  final LoginController controller;

  const BuildLoginTabsView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
        return Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          margin: const EdgeInsets.only(bottom: 24,top: 40).r,
          decoration: BoxDecoration(
              color: context.colors.authField,
              borderRadius: BorderRadius.circular(40)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(controller.tabs.length, (index) {
              return BuildLoginTabs(
                text: controller.tabs[index],
                selected: controller.tabsCubit.state.data == index,
                onTap: () {
                  controller.tabsCubit.onUpdateData(index);
                },
              );
            }),
          ),
        );

  }
}

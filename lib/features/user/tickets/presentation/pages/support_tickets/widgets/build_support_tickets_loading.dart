part of 'support_tickets_sheet_widgets_imports.dart';

class BuildSupportTicketsLoading extends StatelessWidget {
  const BuildSupportTicketsLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericListView(
      padding: Dimens.standardPadding,
      children: List.generate(
        3,
        (index) => Container(
          margin: Dimens.paddingVertical5PX,
          padding: Dimens.paddingAll15PX,
          decoration: BoxDecoration(
            borderRadius: Dimens.borderRadius5PX,
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                color: context.colors.greyWhite,
                blurRadius: 1,
                spreadRadius: .5,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildShimmerItem(
                width: 100.w,
                height: 10.h,
              ),
              BuildShimmerItem(
                width: 50.w,
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

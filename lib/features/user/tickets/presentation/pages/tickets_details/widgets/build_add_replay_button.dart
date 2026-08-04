part of 'tickets_details_widgets_imports.dart';

class BuildAddReplayButton extends StatelessWidget {
  final TicketsDetailsController controller;
  final int id;

  const BuildAddReplayButton(
      {Key? key, required this.controller, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingAll10PX,
      child: FloatingActionButton(
        onPressed: () => controller.showAddReplyDialog(context, id),
        backgroundColor: context.colors.primary,
        child: Icon(Icons.add, color: context.colors.white, size: 30.sp),
      ),
    );
  }
}

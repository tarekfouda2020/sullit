part of 'tickets_details_widgets_imports.dart';

class BuildAddTicketReplyImage extends StatelessWidget {
  final TicketsDetailsController controller;

  const BuildAddTicketReplyImage({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      alignment: AlignmentDirectional.centerStart,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: Dimens.paddingVertical8PX,
            child:  Text(
              tr('images'),
              style: const AppTextStyle.s13_w400(color: Colors.black),
            ),
          ),
          BlocBuilder<GenericBloc<List<File>>, GenericState<List<File>>>(
            bloc: controller.imagesCubit,
            builder: (context, state) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      state.data.length,
                      (index) => Container(
                        height: 55.r,
                        width: 55.r,
                        margin: Dimens.paddingHorizontal5PX,
                        decoration: BoxDecoration(
                          borderRadius: Dimens.borderRadius10PX,
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          image: DecorationImage(
                            image: FileImage(state.data[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => controller.addImages(context),
                      child: Container(
                        height: 55.r,
                        width: 55.r,
                        margin: Dimens.paddingHorizontal5PX,
                        decoration: BoxDecoration(
                            borderRadius: Dimens.borderRadius10PX,
                            color: context.colors.offWhite),
                        child: Icon(
                          Icons.add,
                          size: 15.sp,
                          color: context.colors.blackOpacity,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

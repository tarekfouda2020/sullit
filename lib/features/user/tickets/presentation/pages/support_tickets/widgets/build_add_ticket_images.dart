part of 'support_tickets_sheet_widgets_imports.dart';

class BuildAddTicketsImages extends StatelessWidget {
  final SupportTicketsController controller;

  const BuildAddTicketsImages({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      alignment: AlignmentDirectional.centerStart,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: Dimens.paddingVertical8PX,
            child: Text(
              tr('images'),
              style: const AppTextStyle.s16_w600(color: Colors.black),
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
                    GestureDetector(
                      onTap: () => controller.addImages(context),
                      child: Container(
                        height: 100.r,
                        width: 100.r,
                        margin: Dimens.paddingHorizontal5PX,
                        decoration: BoxDecoration(borderRadius: Dimens.borderRadius10PX, color: context.colors.gray3),
                        child: Icon(
                          Icons.add,
                          size: 15.sp,
                          color: context.colors.black,
                        ),
                      ),
                    ),
                    ...List.generate(
                      state.data.length,
                      (index) => Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: [
                          Container(
                            height: 110.r,
                            width: 100.r,
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
                          Positioned(
                            top: 0,
                            child: GestureDetector(
                              onTap: () => controller.removeImage(state.data[index]),
                              child: Container(
                                width: 20, height: 20,
                                decoration: BoxDecoration(
                                  color: context.colors.redAccent,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.close,color: context.colors.white,size: 15,),
                              ),
                            ),
                          )
                        ],
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

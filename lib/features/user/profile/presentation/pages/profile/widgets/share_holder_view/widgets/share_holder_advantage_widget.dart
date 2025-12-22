part of 'share_holder_view_widgets_imports.dart';


class ShareHolderAdvantageWidget extends StatelessWidget {
  final ProfileController controller;

  const ShareHolderAdvantageWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(Res.crownHeadIcon),
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
          bloc: controller.isExpandCubit ,
      builder: (context, isExpand) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: isExpand.data
              ?null
              :MediaQuery.sizeOf(context).height*0.29,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
              color: context.colors.white.withAlpha(80),
              borderRadius: Dimens.borderRadius12PX,
              border: Border.all(
                  color: const Color(0xff9C5902)
              )
          ),
          child: BlocBuilder<GenericBloc<VipCurrentPlanDomainModel?>, GenericState<VipCurrentPlanDomainModel?>>(
            bloc: controller.currentSubscriptionBloc,
            builder: (context, state) {
              String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
              if(state is GenericUpdateState){
                return Column(
                  children: [
                    isExpand.data
                        ?_buildHtml(state, context, lang)
                        :Flexible(child: _buildHtml(state, context, lang)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          // onTap: () => controller.isExpandCubit.onUpdateData(!isExpand.data),
                          onTap: () => controller.showTierDescription(context),
                          child: Text(
                           tr("seeAll"),
                          style: const AppTextStyle.s15_w500(color: Color(0xff9C5902)),
                          ),
                        )
                      ],
                    )
                  ],
                );
              }else{
                return Column(
                  children: List.generate(5, (index) {
                    return BuildShimmerItem(
                      width: 100,
                      height: 20,
                      borderRadius: Dimens.borderRadius20PX,
                    );
                  },),
                );
              }
            },
          ),
        );
  },
),
      ],
    );
  }

  Html _buildHtml(GenericState<VipCurrentPlanDomainModel?> state, BuildContext context, String lang) {
    return Html(data: getIt<Utilities>().cleanHtml(state.data!.currentSubscription!.description),
                    style: {
                      "body": Style(
                        color: context.colors.black,
                        fontSize: FontSize(15),
                        fontWeight: FontWeight.w500,
                        alignment: lang == LangCodeHelper.langAR ? Alignment.centerLeft : Alignment.centerRight,
                        margin: Margins.all(0),
                        padding: HtmlPaddings.all(0),
                      ),
                      "ul": Style(
                        margin: Margins.all(0),
                        padding: HtmlPaddings.all(0),
                        color: context.colors.black,
                        fontSize: FontSize(15),
                        fontWeight: FontWeight.w500,
                      ),
                      "li": Style(
                        margin: Margins.all(0),
                        padding: HtmlPaddings.all(0),
                        color: context.colors.black,
                        fontSize: FontSize(15),
                        fontWeight: FontWeight.w500,
                      ),
                      "strong": Style(
                        color: context.colors.black,
                        fontSize: FontSize(15),
                        fontWeight: FontWeight.w500,
                      ),
                      "em": Style(
                        color: context.colors.black,
                        fontSize: FontSize(15),
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    },
                  );
  }
}

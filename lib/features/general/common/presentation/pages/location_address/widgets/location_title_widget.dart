part of 'LocationWidgetsImports.dart';

class LocationTitleWidget extends StatelessWidget {
  final LocationAddressData controller;
  final TextStyle? txtStyle;
  const LocationTitleWidget({super.key, required this.controller, this.txtStyle});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<String>,GenericState<String>>(
      bloc: controller.titleBloc,
      builder: (context,state){
        return Text(
          state.data,
          textAlign: TextAlign.start,
          style: txtStyle ?? AppTextStyle.s12_w500(color: context.colors.black),
        );
      },
    );
  }
}

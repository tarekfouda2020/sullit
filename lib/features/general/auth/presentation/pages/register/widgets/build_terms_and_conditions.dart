part of 'build_register_widgets_imports.dart';

class BuildTermsAndConditions extends StatelessWidget {
  final RegisterController registerController;

  const BuildTermsAndConditions({Key? key, required this.registerController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: registerController.termCubit,
      builder: (context, state) {
        return FittedBox(
          child: Row(
            children: [
              Checkbox(
                checkColor: context.colors.white,
                activeColor: context.colors.primary,
                value: state.data,
                onChanged: (value) =>
                    registerController.termCubit.onUpdateData(value!),
              ),
              Row(
                children: [
                  Text(
                    "By signing up you agree to our ",
                    style: AppTextStyle.s16_w400(
                        color: context.colors.blackOpacity),
                  ),
                  GestureDetector(
                    onTap: ()=>AutoRouter.of(context).push(const TermsRoute()),
                    child: Text(
                      "terms and conditions",
                      style:
                          AppTextStyle.s16_w400(color: context.colors.primary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

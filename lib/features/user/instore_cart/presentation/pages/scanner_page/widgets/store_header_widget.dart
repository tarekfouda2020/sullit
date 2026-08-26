part of 'imports.dart';
class StoreHeaderWidget extends StatelessWidget {
  const StoreHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Gaps.line(context.colors.gray3, 10.h),
        Gaps.vGap8,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:20),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,
                ),
                child: Icon(
                  Icons.store,
                  color: context.colors.white,
                ),
              ),
              Gaps.hGap9,
              Text(
                "Munch Corner",
                style: AppTextStyle.s16_w600(color: context.colors.black),
              ),
            ],
          ),
        )
      ],
    );
  }
}

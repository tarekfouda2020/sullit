part of 'classified_products_w_imports.dart';
class BuildProductView extends StatelessWidget {
  const BuildProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: List.generate(
        5,
            (index) => Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              decoration: CustomDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.vGap10,
                  Text('FFF', style: AppTextStyle.s14_w800(color: context.colors.black),),
                  Gaps.vGap20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end ,
                    children: [
                      Text(
                        'pending',
                        style: AppTextStyle.s12_w400(color: context.colors.blue),
                      ),
                    ],
                  ),
                  Gaps.vGap10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('10000', style: AppTextStyle.s14_w800(color: context.colors.black),),
                      const Spacer(),
                      InkWell(
                        onTap: () => AutoRouter.of(context).push(const EditClassifiedProductRoute()),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.edit_outlined, color: context.colors.grey, size: 25,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.delete_outline, color: context.colors.primary, size: 25,),
                      )
                    ],),
                ],
              ),
            ),
            PositionedDirectional(
              top: 5,
              end: 0,
              child: Switch(value: true, onChanged: (value) {},activeColor: context.colors.primary),
            ),
          ],
        ),
      ),
    );
  }
}

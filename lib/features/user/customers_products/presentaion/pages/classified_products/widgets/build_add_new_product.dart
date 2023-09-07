part of 'classified_products_w_imports.dart';

class BuildAddNewProduct extends StatelessWidget {
  const BuildAddNewProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(
        const AddClassifiedProductRoute(),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        width: MediaQuery.of(context).size.width,
        decoration: CustomDecoration(),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: context.colors.greyWhite,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: context.colors.white,
              ),
            ),
            Text(
              'Add New Product',
              style: AppTextStyle.s14_w400(color: context.colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

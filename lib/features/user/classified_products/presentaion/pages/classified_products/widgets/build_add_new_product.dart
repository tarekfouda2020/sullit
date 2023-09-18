part of 'classified_products_w_imports.dart';

class BuildAddNewProduct extends StatelessWidget {
  final int uploads ;
  const BuildAddNewProduct({Key? key, required this.uploads}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(uploads == 0){
          CustomToast.showSimpleToast(msg: 'You must purchase package');
          return ;
        }else {
          AutoRouter.of(context).push(
            AddClassifiedProductRoute(),
          );
        }
      },
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

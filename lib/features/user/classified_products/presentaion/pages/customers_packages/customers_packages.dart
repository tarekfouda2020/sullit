part of 'customers_packages_imports.dart';

class CustomersPackages extends StatefulWidget {
  const CustomersPackages({Key? key}) : super(key: key);

  @override
  State<CustomersPackages> createState() => _CustomersPackagesState();
}

class _CustomersPackagesState extends State<CustomersPackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(
        title: 'Customers Packages',
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'Premium Packages for Customers',
              style: AppTextStyle.s16_w700(color: context.colors.black),
            ),
          ),
          Center(
            child: Wrap(
              runSpacing: 10,
              spacing: 10,
              children: List.generate(
              5,
                  (index) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: CustomDecoration(),
                    width: MediaQuery.of(context).size.width*.45,
                    child: Column(
                children: [
                    const CachedImage(
                      url: '',
                      height: 50,
                      width: 50,
                    ),
                    Gaps.vGap10,
                    Text(
                      'Package name',
                      style: AppTextStyle.s16_w400(color: context.colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.done,
                            color: Colors.green,
                            size: 15,
                          ),
                          Text(
                            ' 10 Product Upload',
                            style: AppTextStyle.s16_w400(color: context.colors.black),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '100 DAE',
                      style: AppTextStyle.s16_w400(color: context.colors.black),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                      decoration: BoxDecoration(
                        color: context.colors.primary,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Text(
                        'Purchase package',
                        style: AppTextStyle.s12_w300(color: context.colors.white),
                      ),
                    )
                ],
              ),
                  ),
            ),
            ),
          )
        ],
      ),
    );
  }
}

part of 'LocationAddressImports.dart';


class LocationAddress extends StatefulWidget {
  final bool fromEdit;

  const LocationAddress({super.key, required this.fromEdit});
  @override
  State<StatefulWidget> createState() => _LocationAddress();
}

class _LocationAddress extends State<LocationAddress> {
  final LocationAddressData locationAddressData = LocationAddressData();

  @override
  void initState() {
    super.initState();
    locationAddressData.getLocation(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: locationAddressData.scaffold,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: context.colors.black),
          onPressed: () => locationAddressData.onPop(context),
        ),
        title: BlocBuilder<LocationCubit,LocationState>(
          builder: (context,state){
            return Text(
              state.model!.address,
              style: AppTextStyle.s12_w500(color: context.colors.black),
            );
          },
        ),
        backgroundColor: context.colors.primary,
        automaticallyImplyLeading: false,
        centerTitle: true,
        flexibleSpace: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
        ),
      ),
      body: BuildGoogleMapView(
        locationAddressData: locationAddressData,
      ),
      floatingActionButton: BuildSaveButton(
        locationAddressData: locationAddressData,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

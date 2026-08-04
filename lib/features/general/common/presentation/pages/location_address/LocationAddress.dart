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
        leading: GestureDetector(
            onTap: () => locationAddressData.onPop(context),
            child: Icon(Icons.arrow_back, color: context.colors.black)),
        title: BlocBuilder<GenericBloc<String>, GenericState<String>>(
          bloc: locationAddressData.titleBloc,
          builder: (context, state) {
            return Text(
              state.data,
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

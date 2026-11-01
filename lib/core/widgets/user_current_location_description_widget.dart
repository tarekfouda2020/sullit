import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/location_service.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class UserCurrentLocationDescriptionWidget extends StatefulWidget {
  final TextStyle? style;
  const UserCurrentLocationDescriptionWidget({super.key, this.style});

  @override
  State<UserCurrentLocationDescriptionWidget> createState() => _UserCurrentLocationDescriptionWidgetState();
}

class _UserCurrentLocationDescriptionWidgetState extends State<UserCurrentLocationDescriptionWidget> {

  final GenericBloc<String> currentLocationDescriptionCubit = GenericBloc<String>("");

  @override
  void initState() {
    super.initState();
    getCurrentLocationName();
  }

  Future<void> getCurrentLocationName()async{
    var latLng =  getIt<LocationService>().userLocation;
    if(latLng!= null){
      var location  = await getIt<LocationService>().getAddressCityAndRegion(latLng);
      currentLocationDescriptionCubit.onUpdateData(location.trim());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<String>,GenericState<String>>(
      bloc: currentLocationDescriptionCubit,
        builder: (context, state) {
      return Visibility(
        visible: state.data.isNotEmpty,
        child: Text(
          state.data,
          style: widget.style ?? AppTextStyle.s14_w400(color: context.colors.black),
        ),
      );
    });
  }
}

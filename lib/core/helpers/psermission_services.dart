import 'dart:developer';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

@injectable
class PermissionServices {
  Future<PermissionStatus> getContactsPermission() async {
    await Permission.contacts.request();
    final PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted && permission != PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus =
          await [Permission.contacts].request();
      return permissionStatus[Permission.contacts] ?? PermissionStatus.granted;
    } else {
      return permission;
    }
  }

  Future<bool> requestPermission(Permission permission, BuildContext context) async {
    if(permission == Permission.storage && Platform.isAndroid){
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      if(androidInfo.version.sdkInt > 29){
        return true;
      }
    }
    
    // Check if this is a location permission type
    bool isLocationPermission = permission == Permission.location || 
                                permission == Permission.locationWhenInUse || 
                                permission == Permission.locationAlways;
    
    // Check current status first before requesting
    PermissionStatus currentStatus = await permission.status;
    // Check if Location Services are enabled on iOS
    if (Platform.isIOS && isLocationPermission) {
      await Permission.locationWhenInUse.serviceStatus;
    }
    
    if (currentStatus.isGranted || (Platform.isIOS && currentStatus.isLimited && isLocationPermission)) {
      return true;
    }
    
    // On iOS, if permission is already denied, don't request again
    // because iOS won't show the dialog - it will just mark as permanently denied
    if (Platform.isIOS && (currentStatus.isDenied || currentStatus.isPermanentlyDenied)) {
      log("==== iOS: Permission already denied, must go to settings ====");
      String message = isLocationPermission
          ? tr("locationPermissionRequired")
          : tr("noPermission");
      CustomToast.showSimpleToast(msg: message);
      // Future.delayed(const Duration(milliseconds: 800), () {
      //   openAppSettings();
      // },);
      return false;
    }
    
    // Only request if not denied yet (first time asking)
    PermissionStatus permissionStatus = await permission.request();
    print("==== Permission status after request: $permissionStatus ====");
    
    // On iOS, isLimited means partial access which should be treated as granted for location
    if (permissionStatus.isGranted || (Platform.isIOS && permissionStatus.isLimited && isLocationPermission)) {
      print("==== Permission granted/limited after request ====");
      return true;
    }
    
    // Handle denial after request
    if (permissionStatus.isPermanentlyDenied || permissionStatus.isDenied) {
      // The user opted to never again see the permission request dialog for this
      // app. The only way to change the permission's status now is to let the
      // user manually enable it in the system settings.
      print("==== Permission denied/permanently denied, opening settings ====");
      String message = isLocationPermission
          ? tr("locationPermissionRequired")
          : tr("noPermission");
      CustomToast.showSimpleToast(msg: message);
      Future.delayed(const Duration(milliseconds: 800), () {
        openAppSettings();
      },);
      return false;
    }
    print("==== Permission status unclear, returning true to be safe ====");
    return true;
  }
}

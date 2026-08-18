enum DeviceTypeEnum {
  android,
  ios;

  String getDeviceType() =>
      switch (this) { android => "android", ios => "ios" };
}

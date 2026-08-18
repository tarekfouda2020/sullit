import 'package:flutter/services.dart';

class GetMacAddress {
  static const MethodChannel _channel = MethodChannel('get_mac');

  static Future<String> get macAddress async {
    final String macID = await _channel.invokeMethod('getMacAddress');
    return macID;
  }
}

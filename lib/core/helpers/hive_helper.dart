import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {

  HiveHelper._();

  static final HiveHelper instance = HiveHelper._();

  static const int _defaultHiveKey = 1;

   bool _initialized = false;


  Future<void> init()async{
    if (_initialized) return;
    await Hive.initFlutter();
    _initialized = true;
  }

   Future<void> registerData<T>(TypeAdapter<T> adapter) async {
   // Future<void> registerData(List<TypeAdapter> adapters) async {
    try{
      Hive.registerAdapter<T>(adapter);
    }catch (e) {
      log('Hive adapter already registered: $e');
    }
    // for (final adapter in adapters) {
    //   try {
    //     Hive.registerAdapter(adapter);
    //   } catch (e) {
    //     log('Hive adapter already registered: $e');
    //   }
    // }
    // log('Hive initialized with $adapters adapter');
  }


   Future<Box<T>> openBox<T>(String boxName) async {
    if (!_initialized) {
      throw Exception('HiveHelper not initialized. Call HiveHelper.init() first.');
    }

    if (!Hive.isBoxOpen(boxName)) {
      try {
        return await Hive.openBox<T>(boxName);
      } catch (e) {
        /// if box not exist or get corrupted for any reason
        /// make a new box with the same name....but it will be empty
        log('Failed to open box $boxName: $e');
        log('Clearing corrupted box... $boxName');
        await Hive.deleteBoxFromDisk(boxName);
        log('Corrupted box cleared, opening fresh box...');
        return await Hive.openBox<T>(boxName);
      }
    } else {
      return Hive.box<T>(boxName);
    }
  }


   Future<void> closeBox(String boxName) async {
    if (Hive.isBoxOpen(boxName)) {
      await Hive.box(boxName).close();
    }
  }

   Future<void> closeAllBoxes() async {
    await Hive.close();
    _initialized = false;
    log('All Hive boxes closed.');
  }

   Future<void> clearHive() async {
     await Hive.deleteFromDisk();
    log('Hive Been cleared');
  }


   Future<void> deleteBox<T>(String boxName) async {
    if (Hive.isBoxOpen(boxName)) {
      await Hive.box<T>(boxName).close();
    }
    await Hive.deleteBoxFromDisk(boxName);
    log('Deleted box: $boxName');
  }


  Box<T>? getBox<T>(String boxName){
     try {
       if (!Hive.isBoxOpen(boxName)) {
         log('Box $boxName is not open');
         return null;
       }
       return Hive.box<T>(boxName);
     } catch (e) {
       log('Error accessing box $boxName: $e');
       return null;
     }
  }

  Future<void> addDataToBox<T, K extends Object>(String boxName, T value,{ K? key})async{
     var box = getBox<T>(boxName);
     if (box == null) return;
     await box.put(key ?? _defaultHiveKey, value);
  }

  T? getDataFromBox<T,K extends Object>(String boxName, { K? key}){
    var box = getBox<T>(boxName);
    if (box == null) return null;
    return box.get(key ?? _defaultHiveKey);
  }

  Future<void> deleteDataFromBox<T,K extends Object>(String boxName,{ K? key})async{
    var box = getBox<T>(boxName);
    if (box == null) return;
    await box.delete(key ?? _defaultHiveKey);
  }

}


class HiveBoxesNames{

  static const String instoreCart = "orderDetails";


}

class HiveBoxesKeys{




}

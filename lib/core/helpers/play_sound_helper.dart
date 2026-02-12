import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:flutter_tdd/res.dart';
import 'package:sound_effect/sound_effect.dart';

class PlaySoundHelper {

  PlaySoundHelper._();

  static final PlaySoundHelper instance = PlaySoundHelper._();


  final SoundEffect _player = SoundEffect();


  Future<void> startSound({required VoidCallback afterSoundEnd,int soundDurationMilliSec = 5500}) async {
    try{
      _player.play("effect", volume: 2);
    }catch(e){
     log("====>>>>>>>. error in play sound $e   ");
    }
   await Future.delayed(Duration(milliseconds: soundDurationMilliSec));
   afterSoundEnd.call();
  }


  Future<void> initSound() async{
    await _player.initialize();
    await _player.load("effect", Res.ramadanSplashSound);
  }


  Future<void> stopSound() async {
    try {
      await _player.release();
    } catch (e) {
      log("error while init sound $e ");
    }
  }


}
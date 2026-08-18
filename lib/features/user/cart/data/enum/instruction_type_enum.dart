import 'package:flutter_tdd/res.dart';

enum InstructionTypeEnum {
  leaveAtDoor,
  avoidCalling,
  noBillRing;

  String getIcon() => switch (this) {
        leaveAtDoor => Res.doorIcon,
        avoidCalling => Res.phoneOffIcon,
        noBillRing => Res.billOffIcon,
      };

  String getTitle() => switch (this) {
        leaveAtDoor => "Leave at door",
        avoidCalling => "Leave at door",
        noBillRing => "Don’t ring the bill",
      };
}

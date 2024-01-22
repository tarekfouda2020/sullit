import 'dart:io';

class SupportMsgParams {
  String? text;
  File? image;

  SupportMsgParams({
    this.text,
    this.image,
  });
  Map<String,dynamic>toJson()=>{
    "text":text,
    "image":image,
  };
}

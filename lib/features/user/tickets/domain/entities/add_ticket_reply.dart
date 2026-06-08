import 'dart:io';

class AddTicketReplyParams {
  int id;
  String reply;

  List<File> images;

  AddTicketReplyParams({
    required this.id,
    required this.reply,
    required this.images,
  });

  Map<String, dynamic> toJson() => {"reply": reply, "images[]": images};
}

// ignore_for_file: avoid_dynamic_calls

import 'dart:io';

class CreateTicketParams {
  String subject;

  String details;

  List<File> images;

  CreateTicketParams({
    required this.subject,
    required this.details,
    required this.images,
  });

  Map<String, dynamic> toJson() =>
      {"subject": subject, "details": details, "images[]": images};

  bool isSuccess(data) => data['key'] == 'success';
}

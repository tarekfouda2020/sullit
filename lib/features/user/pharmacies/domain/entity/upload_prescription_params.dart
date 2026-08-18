import 'dart:io';

class UploadPrescriptionParams {
  final File file;

  UploadPrescriptionParams({required this.file});

  Map<String, dynamic> toJson() {
    return {
      "file": file,
    };
  }
}

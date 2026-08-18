import 'dart:io';

extension FileExtension on File {
  static const List<String> _imageExtensions = [
    'jpg',
    'jpeg',
    'png',
    'gif',
    'bmp',
    'webp',
  ];

  bool get isImage => _imageExtensions.contains(path.split('.').last.toLowerCase());
}

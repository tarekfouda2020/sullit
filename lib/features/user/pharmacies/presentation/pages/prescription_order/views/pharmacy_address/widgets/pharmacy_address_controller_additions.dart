// ─── Add the following inside PharmacyAddressController ───────────────────────
//
// 1. Declare the bloc at the top of the controller class:
//
//   final GenericBloc<String?> prescriptionFileBloc = GenericBloc<String?>(null);
//
// 2. Add the method that opens the file picker:
//
//   Future<void> onPickPrescriptionFile(BuildContext context) async {
//     final result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['png', 'jpg', 'jpeg', 'pdf'],
//     );
//     if (result != null && result.files.single.path != null) {
//       prescriptionFileBloc.updateData(result.files.single.path);
//     }
//   }
//
// 3. Dispose it in the controller's dispose (if a dispose method exists):
//
//   prescriptionFileBloc.close();
//
// ─── pubspec.yaml — add this dependency ───────────────────────────────────────
//
//   file_picker: ^8.1.2
//
// Then run:  flutter pub get
// ──────────────────────────────────────────────────────────────────────────────

import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/file_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_model.freezed.dart';
part 'file_model.g.dart';

@freezed
@immutable
class FileModel extends BaseApiModel<FileDomainModel> with _$FileModel {
  const FileModel._();

  @JsonSerializable(explicitToJson: true)
  const factory FileModel(
      {required int id,
      @JsonKey(name: 'file_original_name') required String fileOriginalName,
      @JsonKey(name: 'file_name') required String fileName,
      required String url,
      @JsonKey(name: 'file_size') required int fileSize,
      required String extension,
      required String type}) = _FileModel;

  factory FileModel.fromJson(Map<String, dynamic> json) =>
      _$FileModelFromJson(json);

  @override
  FileDomainModel toDomainModel() {
    return FileDomainModel(
      id: id,
      fileOriginalName: fileOriginalName,
      fileName: fileName,
      url: url,
      fileSize: fileSize,
      extension: extension,
      type: type,
    );
  }
}

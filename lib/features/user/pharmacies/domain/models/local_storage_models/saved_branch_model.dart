import 'package:flutter_tdd/features/user/pharmacies/data/enums/branch_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_branch_model.freezed.dart';
part 'saved_branch_model.g.dart';

@freezed
class SavedBranchModel with _$SavedBranchModel {
  const factory SavedBranchModel({
    required int id,
    @JsonKey(name: 'owner_id') required int ownerId,
    @JsonKey(name: 'owner_name') required String ownerName,
    required String name,
    required BranchTypeEnum type,
  }) = _SavedBranchModel;

  factory SavedBranchModel.fromJson(Map<String, dynamic> json) =>
      _$SavedBranchModelFromJson(json);
}
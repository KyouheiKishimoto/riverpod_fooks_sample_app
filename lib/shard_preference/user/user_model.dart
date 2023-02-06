import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user_model.g.dart';
part 'generated/user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    int? userId,
    String? userName,
    int? age,
    String? email,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
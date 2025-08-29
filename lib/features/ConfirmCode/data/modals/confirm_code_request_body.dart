// // lib/features/confirmcode/data/models/confirm_code_request_body.dart
// import 'package:json_annotation/json_annotation.dart';
// part 'confirm_code_request_body.g.dart';

// @JsonSerializable()
// class ConfirmCodeRequestBody {
//   @JsonKey(name: 'email_or_phone')
//   final String emailOrPhone;
//   @JsonKey(name: 'code')
//   final String code;

//   ConfirmCodeRequestBody({required this.emailOrPhone, required this.code});

//   factory ConfirmCodeRequestBody.fromJson(Map<String, dynamic> json) =>
//       _$ConfirmCodeRequestBodyFromJson(json);

//   Map<String, dynamic> toJson() => _$ConfirmCodeRequestBodyToJson(this);
// }
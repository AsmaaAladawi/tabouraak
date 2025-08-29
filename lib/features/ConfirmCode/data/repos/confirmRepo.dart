// // lib/features/confirmcode/data/repos/confirm_code_repo.dart
// import 'package:tabourak/core/networking/api_error_handler.dart';
// import 'package:tabourak/core/networking/api_result.dart';
// import 'package:tabourak/core/networking/api_service.dart';
// import 'package:tabourak/features/ConfirmCode/data/modals/confirm_code_request_body.dart';
// import 'package:tabourak/features/ConfirmCode/data/modals/confirm_code_response.dart';

// class ConfirmCodeRepo {
//   final ApiService _apiService;

//   ConfirmCodeRepo(this._apiService);

//   Future<ApiResult<ConfirmCodeResponse>> verifyCode(
//       ConfirmCodeRequestBody requestBody) async {
//     try {
//       final response = await _apiService.verifyCode(requestBody);
//       return ApiResult.success(response);
//     } catch (error) {
//       return ApiResult.failure(ErrorHandler.handle(error));
//     }
//   }
// }
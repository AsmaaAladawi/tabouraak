// // lib/features/confirmcode/logic/confirm_code_cubit.dart
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:tabourak/core/networking/api_result.dart';
// import 'package:tabourak/features/ConfirmCode/data/modals/confirm_code_request_body.dart';
// import 'package:tabourak/features/ConfirmCode/data/modals/confirm_code_response.dart';
// import 'package:tabourak/features/ConfirmCode/data/repos/confirmRepo.dart';
// import 'package:tabourak/features/confirmcode/logic/confirm_code_state.dart';

// class ConfirmCodeCubit extends Cubit<ConfirmCodeState<ConfirmCodeResponse>> {
//   final ConfirmCodeRepo _confirmCodeRepo;
//   ConfirmCodeCubit(this._confirmCodeRepo) : super(const ConfirmCodeState.initial());

//   List<TextEditingController> codeControllers = List.generate(4, (_) => TextEditingController());
//   final formKey = GlobalKey<FormState>();

//   void verifyCode(String emailOrPhone) async {
//     emit(const ConfirmCodeState.loading());
//     final response = await _confirmCodeRepo.verifyCode(
//       ConfirmCodeRequestBody(
//         emailOrPhone: emailOrPhone,
//         code: codeControllers.map((controller) => controller.text).join(),
//       ),
//     );
//     response.when(
//       success: (confirmCodeResponse) {
//         emit(ConfirmCodeState.success(confirmCodeResponse));
//       },
//       failure: (error) {
//         emit(ConfirmCodeState.error(error: error.apiErrorModel.message ?? ''));
//       },
//     );
//   }

//   void resendCode(String emailOrPhone) async {
//     emit(const ConfirmCodeState.loading());
//     // هنا ممكن تستدعي API تانية عشان ترسل الكود تاني
//     emit(const ConfirmCodeState.initial());
//   }

//   @override
//   Future<void> close() {
//     for (var controller in codeControllers) {
//       controller.dispose();
//     }
//     return super.close();
//   }
// }
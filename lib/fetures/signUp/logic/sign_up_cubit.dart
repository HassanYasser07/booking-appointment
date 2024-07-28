import 'package:bloc/bloc.dart';
import 'package:booking_appointment/fetures/signUp/data/models/sign_up_request_body.dart';
import 'package:booking_appointment/fetures/signUp/logic/sign_up_state.dart';
import 'package:flutter/material.dart';

import '../data/repos/sign_up_repo.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo signupRepo;
  SignupCubit( this.signupRepo) : super(const SignupState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
  TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoadingState()async{
    emit(const SignupState.signupLoading());
    final response =await signupRepo.signup(
      SignUpRequestBody(
          email: emailController.text,
          password: passwordController.text,
          name: nameController.text,
          gender: 0,
          phone: phoneController.text,
          passwordConfirmation: passwordConfirmationController.text)
    );
    response.when(
        success: (signupResponse) {
          emit(SignupState.signupSuccess(signupResponse));
        } ,
        failure: (error) {
          emit(SignupState.signupError(error: error.apiErrorModel.message ?? ''));
        });
  }

}

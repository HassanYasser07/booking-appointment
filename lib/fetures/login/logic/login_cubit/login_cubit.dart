import 'package:bloc/bloc.dart';
import 'package:booking_appointment/fetures/login/data/models/login_request_body.dart';
import 'package:booking_appointment/fetures/login/data/models/login_response.dart';
import 'package:flutter/cupertino.dart';
import '../../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  final formKey=GlobalKey<FormState>();

  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  void emitLoadingState(LoginRequestBody loginRequestBody )async{
    emit(const LoginState.loading());
    final response =await _loginRepo.login(loginRequestBody);

    response.when(success: ( loginResponse){
      emit(LoginState.success(loginResponse));
    }, failure: (error){
      emit(LoginState.error(error: error.apiErrorModel.message??''));
    });
    
    
  }
}

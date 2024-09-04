import 'package:bloc/bloc.dart';
import 'package:booking_appointment/core/helper/constants.dart';
import 'package:booking_appointment/core/helper/shared_pref_helper.dart';
import 'package:booking_appointment/core/networking/dio_factory.dart';
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
  void emitLoadingState( )async{
    emit(const LoginState.loading());
    final response =await _loginRepo.login(
      LoginRequestBody(
          email: emailController.text,
          password: passwordController.text)
    );

    response.when(success: ( loginResponse)async{
      await saveUserToken(loginResponse.userData?.token ?? '');
      emit(LoginState.success(loginResponse));
    }, failure: (error){
      emit(LoginState.error(error: error.apiErrorModel.message??''));
    });
    
    
  }
  Future <void> saveUserToken (String token)async{
    await SharedPrefHelper.setData(SharedPrefKey.userToken, token);
    DioFactory.setTokenInHeaderAfterLogin(token);
  }
}

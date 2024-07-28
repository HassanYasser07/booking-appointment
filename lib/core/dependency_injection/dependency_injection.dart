import 'package:booking_appointment/core/networking/api_services.dart';
import 'package:booking_appointment/core/networking/dio_factory.dart';
import 'package:booking_appointment/fetures/login/data/repos/login_repo.dart';
import 'package:booking_appointment/fetures/login/logic/login_cubit/login_cubit.dart';
import 'package:booking_appointment/fetures/signUp/data/repos/sign_up_repo.dart';
import 'package:booking_appointment/fetures/signUp/logic/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGitIt()async{
  Dio dio=DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(()=>ApiServices(dio));

  
  getIt.registerLazySingleton<LoginRepo>(()=>LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(()=>LoginCubit(getIt()));




  getIt.registerLazySingleton<SignupRepo>(()=>SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(()=>SignupCubit(getIt()));
}


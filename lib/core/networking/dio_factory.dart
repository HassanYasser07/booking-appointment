import 'package:booking_appointment/core/helper/constants.dart';
import 'package:booking_appointment/core/helper/shared_pref_helper.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory{
  DioFactory._();
  static Dio? dio;
  static Dio getDio(){
    Duration timeOut=const Duration(seconds: 100);
    if(dio==null){
      dio=Dio();

      dio!
      ..options.connectTimeout=timeOut
      ..options.receiveTimeout=timeOut;
      addDioHeaders();
      addDioInterceptor();
      return dio!;
    }else{
      return dio!;
    }
  }
  static void addDioHeaders()async{
    dio?.options.headers={
      'Accept' : 'application/json',
      "authorization" :'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKey.userToken)} '
    };

  }
  static void setTokenInHeaderAfterLogin(String token){
    dio?.options.headers={
      "authorization" :'Bearer $token '
    };
  }
static void addDioInterceptor(){
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      )
    );
}
}


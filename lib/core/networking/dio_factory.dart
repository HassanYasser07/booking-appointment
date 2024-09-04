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
  static void addDioHeaders(){
    dio?.options.headers={
      'Accept' : 'application/json',
      "authorization" :'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzI0ODc4ODkzLCJleHAiOjE3MjQ5NjUyOTMsIm5iZiI6MTcyNDg3ODg5MywianRpIjoiN2tJaXhtdEJMYmhpZUZqZiIsInN1YiI6IjE5NTgiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.D-ixwpePJ6amE07G7poI65oOmKnvJIEiY196udsjNi4'
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


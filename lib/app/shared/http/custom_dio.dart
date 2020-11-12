import 'package:dio/native_imp.dart';
import 'package:flutter_movie_app/app/shared/constants.dart';
import 'package:flutter_movie_app/app/shared/http/interceptors.dart/custom_interceptors.dart';

class CustomDio extends DioForNative {
  
  CustomDio(){
    options.baseUrl = BASE_URL;
    options.connectTimeout = 10000;
    interceptors.add(CustomInterceptors());

  }


}
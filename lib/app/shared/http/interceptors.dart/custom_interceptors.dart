import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class CustomInterceptors extends InterceptorsWrapper{
  
  @override
  Future onRequest(RequestOptions options) async {
    debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
    return options;
  }
  
  @override
  Future onResponse(Response response) async{
    
    debugPrint('RESPONSE[${response.statusCode}] => PATH: ${response.request.path}');
    return response;
  }
  
  
  @override
  Future onError(DioError err) {
    debugPrint('ERROR[${err.response.statusCode}] => PATH: ${err.request.path}');
    throw err;
  }


  
}
import 'package:demo_app/utils/Urls.dart';
import 'package:dio/dio.dart';

class CoresService {

  Future<Response> fetchCores() async{
    final dio = new Dio();
    return dio.get(Urls.coresUrl);
  } 
}
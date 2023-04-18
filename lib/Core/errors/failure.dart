import 'package:dio/dio.dart';

abstract class Failure{
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure{
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromResponse(int statusCode , dynamic response){
    if(statusCode ==400||statusCode ==401||statusCode == 403){
      return ServerFailure(response['error']['message']);
    }else if(statusCode ==404){
      return ServerFailure('your request nor found, Please try again later.');
    }else if(statusCode == 500){
      return ServerFailure('Internal Server error, Please try again later.');
    }else{
      return ServerFailure('Oops!! There was an unknown error recently, Please try again later.');
    }
  }
  factory ServerFailure.fromDioError(DioError dioError){
    switch(dioError.type){
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer.');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with ApiServe.r');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer.');
      case DioErrorType.badCertificate:
        return ServerFailure('incorrect certificate with ApiServer.');
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer was canceled.');
      case DioErrorType.connectionError:
        if(dioError.message!.contains('SocketException')){
          return ServerFailure('No Internet Connection.');
        }
        return ServerFailure('Unexpected Error, Please try again later.');
      case DioErrorType.unknown:
        return ServerFailure('Oops!! Unexpected Error, \nCheck Your connection or Please try again later.');
    }
  }
}
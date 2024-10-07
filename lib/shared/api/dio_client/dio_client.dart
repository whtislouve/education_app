import 'package:dio/dio.dart';
import 'package:travel_app/shared/api/dio_client/response_model.dart';

class DioClient {
  final Dio dio = Dio();
  // ..interceptors.addAll([
  //   PrettyDioLogger(
  //     requestHeader: true,
  //     requestBody: true,
  //     responseHeader: true,
  //     responseBody: true,
  //     error: true,
  //     compact: false,
  //   ),
  // ]);
  // ..interceptors.add(

  // );

  Future makeRequest(String url, ResponseModel responseModel) async {
    try {
      Response response = await dio.get(url);
      // https://dummyjson.com/c/0426-b5ca-41af-ba53
      //https://dummyjson.com/c/fb73-55f7-4c8d-b1d4
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return responseModel.copyWith(response: response.data);
      } else {
        return responseModel.copyWith(error: response.statusMessage);
      }
    } on DioException catch (e) {
      final dioError = _handelDioErrors(e);

      return responseModel.copyWith(error: dioError);
    } catch (e) {
      return responseModel.copyWith(error: e.toString());
    }
  }

  String _handelDioErrors(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timeout";
      case DioExceptionType.sendTimeout:
        return "Url send timeout";
      case DioExceptionType.receiveTimeout:
        return "Occured timeout while receiving";
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        if (statusCode != null) {
          switch (statusCode) {
            case 400:
              return "Bad request";
            case 401:
              return "Unauthorized";
            case 403:
              return "Forbidden request";
            case 404:
              return "Not found";
            case 409:
              return "Conflict in the current state of resourse";
          }
        }
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.unknown:
        return "No Internet Connection";

      case DioExceptionType.badCertificate:
        return "Incorrect serftificate";
      case DioExceptionType.connectionError:
        return "Connection error";

      default:
        return "Unknown error";
    }
    return "Unknown error type";
  }
}

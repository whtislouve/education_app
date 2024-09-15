import 'package:travel_app/shared/api/dio_client/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:travel_app/shared/api/dio_client/response_model.dart';

class AllTopicsBottomSheetRepository {
  final dioClient = DioClient();
  ResponseModel responseModel = ResponseModel();
  Future getTopicsData() async {
    responseModel = await dioClient.makeRequest(
        "https://dummyjson.com/c/fb73-55f7-4c8d-b1d4", responseModel);
  }
}

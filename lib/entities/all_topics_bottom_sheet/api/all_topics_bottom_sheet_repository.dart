import 'package:travel_app/shared/api/dio_client/dio_client.dart';

import 'package:travel_app/shared/api/dio_client/response_model.dart';

class AllTopicsBottomSheetRepository {
  final dioClient = DioClient();
  ResponseModel responseModel = ResponseModel();
  Future getTopicsData() async {
    responseModel = await dioClient.makeRequest(
        "https://dummyjson.com/c/4ca4-96ce-4003-b45f", responseModel);
  }
}

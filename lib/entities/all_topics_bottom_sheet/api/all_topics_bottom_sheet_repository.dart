import 'package:education_app/shared/api/dio_client/dio_client.dart';

import 'package:education_app/shared/api/dio_client/response_model.dart';

class AllTopicsBottomSheetRepository {
  final dioClient = DioClient();
  ResponseModel responseModel = ResponseModel();
  Future getTopicsData() async {
    responseModel = await dioClient.makeRequest(
        "https://dummyjson.com/c/a84b-f32d-4976-8fef", responseModel);
  }
}

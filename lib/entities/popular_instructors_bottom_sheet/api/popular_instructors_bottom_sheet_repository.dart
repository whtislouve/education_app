import 'package:travel_app/shared/api/dio_client/dio_client.dart';
import 'package:travel_app/shared/api/dio_client/response_model.dart';

class PopularInstructorsBottomSheetRepository {
  final dioClient = DioClient();
  ResponseModel responseModel = ResponseModel();
  Future getInstructorsData() async {
    responseModel = await dioClient.makeRequest(
        "https://dummyjson.com/c/c5a5-6a52-40ea-87c5", responseModel);
  }
}

import 'package:education_app/shared/api/dio_client/dio_client.dart';
import 'package:education_app/shared/api/dio_client/response_model.dart';

class PopularInstructorsBottomSheetRepository {
  final dioClient = DioClient();
  ResponseModel responseModel = ResponseModel();
  Future getInstructorsData() async {
    responseModel = await dioClient.makeRequest(
        "https://dummyjson.com/c/fc7c-3351-4609-92ae", responseModel);
  }
}

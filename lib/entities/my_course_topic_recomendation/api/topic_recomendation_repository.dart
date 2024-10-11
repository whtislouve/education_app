import 'package:travel_app/entities/course/api/course_interceptor.dart';
import 'package:travel_app/shared/api/dio_client/dio_client.dart';
import 'package:travel_app/shared/api/dio_client/response_model.dart';

class TopicRecomendationRepository {
  final dio = DioClient()..dio.interceptors.add(CourseInterceptor());
  ResponseModel responseModel = ResponseModel();

  Future getTopicRecomendationData() async {
    responseModel = await dio.makeRequest(
        "https://dummyjson.com/c/8288-ec4b-4368-8f77", responseModel);
  }
}

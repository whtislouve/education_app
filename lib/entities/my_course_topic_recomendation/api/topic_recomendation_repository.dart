import 'package:travel_app/entities/course/api/course_interceptor.dart';
import 'package:travel_app/shared/api/dio_client/dio_client.dart';
import 'package:travel_app/shared/api/dio_client/response_model.dart';

class TopicRecomendationRepository {
  final dio = DioClient()..dio.interceptors.add(CourseInterceptor());
  ResponseModel responseModel = ResponseModel();

  Future getTopicRecomendationData() async {
    responseModel = await dio.makeRequest(
        "https://dummyjson.com/c/d183-b6e8-49a1-adc1", responseModel);
  }
}

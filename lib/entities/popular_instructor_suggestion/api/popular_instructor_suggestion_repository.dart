import 'package:travel_app/entities/course/api/course_interceptor.dart';
import 'package:travel_app/shared/api/dio_client/dio_client.dart';
import 'package:travel_app/shared/api/dio_client/response_model.dart';

class PopularInstructorSuggestionRepository {
  final dio = DioClient()..dio.interceptors.add(CourseInterceptor());
  ResponseModel responseModel = ResponseModel();
  Future getPopularInstructorSuggestionData() async {
    responseModel = await dio.makeRequest(
        "https://dummyjson.com/c/f69f-15e2-42bf-a98e", responseModel);
  }
}

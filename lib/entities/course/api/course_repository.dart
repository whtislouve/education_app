import 'package:travel_app/entities/course/api/course_interceptor.dart';
import 'package:travel_app/shared/api/dio_client/dio_client.dart';
import 'package:travel_app/shared/api/dio_client/response_model.dart';

class CourseRepository {
  final dioClient = DioClient()..dio.interceptors.add(CourseInterceptor());

  ResponseModel responseModel = ResponseModel();

  Future getCourseDetailData() async {
    responseModel = await dioClient.makeRequest(
        "https://dummyjson.com/c/fff7-a6ed-431c-9eca", responseModel);
  }

  Future getPopularCourseData() async {
    responseModel = await dioClient.makeRequest(
        "https://dummyjson.com/c/001d-f2f1-4119-863e", responseModel);
  }
}

import 'package:travel_app/entities/course/api/course_interceptor.dart';
import 'package:travel_app/shared/api/dio_client/dio_client.dart';
import 'package:travel_app/shared/api/dio_client/response_model.dart';

class CourseRepository {
  final dioClient = DioClient()..dio.interceptors.add(CourseInterceptor());

  ResponseModel responseModel = ResponseModel();

  Future getCourseDetailData() async {
    responseModel = await dioClient.makeRequest(
        "https://dummyjson.com/c/1865-f939-46cf-907e", responseModel);
  }

  Future getPopularCourseData() async {
    responseModel = await dioClient.makeRequest(
        "https://dummyjson.com/c/f188-6ad6-4ea2-af3a", responseModel);
  }
}

import 'package:travel_app/entities/course/api/course_interceptor.dart';
import 'package:travel_app/shared/api/dio_client/dio_client.dart';
import 'package:travel_app/shared/api/dio_client/response_model.dart';

class PopularInstructorSuggestionRepository {
  final dio = DioClient()..dio.interceptors.add(CourseInterceptor());
  ResponseModel responseModel = ResponseModel();
  Future getPopularInstructorSuggestionData() async {
    responseModel = await dio.makeRequest(
        "https://dummyjson.com/c/c466-d5d6-40d6-895d", responseModel);

    // await insertCourse("44445");
    // await insertCourseOverview(1, 1);
    // await insertReviews(1, 'Lolo');
    // await insertCourseOverview(1, 1);
    // List<Map<String, dynamic>> course = await getCourse();
    // print(course);
  }
}

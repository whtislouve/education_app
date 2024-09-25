import 'package:dio/dio.dart';

class CourseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data["detailCourse"] != null) {
      lessonTimeToHours(response);
    }
    super.onResponse(response, handler);
  }
}

void lessonTimeToHours(Response response) {
  for (int i = 0; i < response.data["detailCourse"].length; i++) {
    response.data["detailCourse"][i]["totalLessonsTime"] =
        convertSecondsToHours(
            response.data["detailCourse"][i]["totalLessonsTime"]);
  }
}

String convertSecondsToHours(int time) {
  final duration = Duration(seconds: time);
  final hours = duration.inHours;
  final minutes = hours % 60;
  return hours > 0 ? "$hours\h $minutes\m" : "$minutes\m";
}

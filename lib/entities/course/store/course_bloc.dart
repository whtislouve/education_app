import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:education_app/entities/course/api/course_repository.dart';
import 'package:education_app/entities/course/models/course_model.dart';
import 'package:education_app/shared/api/dio_client/response_model.dart';

part 'course_events.dart';
part 'course_states.dart';
part "course_bloc.freezed.dart";

class CourseBloc extends Bloc<CourseEvents, CourseStates> {
  CourseRepository courseDetailRepository;
  ResponseModel responseModel = ResponseModel();
  List<CourseModel> courseDetail = [];
  CourseBloc({
    required this.courseDetailRepository,
  }) : super(const CourseStates.initialState()) {
    on<CourseEvents>(
      (event, emit) async {
        await event.map(
            getCourseDetailData: (_) async => await _getCourseDetailData(emit),
            getPopularCoursesData: (_) async {
              await Future.delayed(const Duration(seconds: 1));
              await _getPopularCoursesData(emit);
            });
      },
    );
  }

  Future _getCourseDetailData(Emitter<CourseStates> emit) async {
    await courseDetailRepository.getCourseDetailData();
    _transformFromResponseToModel(emit);
  }

  Future _getPopularCoursesData(Emitter<CourseStates> emit) async {
    await courseDetailRepository.getPopularCourseData();
    _transformFromResponseToModel(emit);
  }

  void _transformFromResponseToModel(Emitter<CourseStates> emit) {
    if (courseDetailRepository.responseModel.errorText == "") {
      courseDetailRepository.responseModel.responseData["detailCourse"]
          .forEach((course) => {
                courseDetail.add(CourseModel.fromJson({
                  "id": course["id"],
                  "title": course["title"],
                  "totalLessonsTime": course["totalLessonsTime"],
                  "lessonsAmount": course["lessonsAmount"],
                  "description": course["description"],
                  "coursePrice": course["coursePrice"],
                  "courseImageName": course["courseImageName"],
                  "courseOverview": course["courseOverview"],
                  "instructor": course["instructor"],
                  "reviews": course["reviews"],
                }))
              });

      emit(CourseStates.acceptingCourseDetailData(courseDetails: courseDetail));
    } else {
      emit(CourseStates.errorSendingCourseDetailRequest(
          error: courseDetailRepository.responseModel.errorText));
    }
  }
}

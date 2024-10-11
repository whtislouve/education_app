import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:education_app/pages/forgot_password/ui/forgot_password_page.dart';
import 'package:education_app/pages/walkthrough/ui/walkthrough_page.dart';
import 'package:education_app/pages/sign_in/ui/sign_in_page.dart';
import 'package:education_app/pages/sign_in_with_email_page/ui/sign_in_with_email_page.dart';
import 'package:education_app/pages/explore/ui/explore_page.dart';
import 'package:education_app/pages/my_course/ui/my_course_page.dart';
import 'package:education_app/pages/home/ui/home_page.dart';
import 'package:education_app/pages/topic/ui/topic_page.dart';
import 'package:education_app/entities/all_topics_bottom_sheet/models/topic.dart';
import 'package:education_app/pages/all_topics/ui/all_topics_bottom_sheet.dart';
import 'package:education_app/pages/popular_instructors/ui/popular_instructors_bottom_sheet.dart';
import 'package:education_app/pages/course_detail/ui/course_detail_page.dart';
import 'package:education_app/entities/course/models/course_model.dart';
import 'package:education_app/pages/all_courses/ui/all_courses_bottom_sheet.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WalkthroughRoute.page, initial: true),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SignInWithEmailRoute.page),
        AutoRoute(page: ForgotPasswordRoute.page),
        AutoRoute(page: ExploreRoute.page),
        AutoRoute(page: MyCourseRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: AllTopicsBottomSheetRoute.page),
        AutoRoute(page: TopicRoute.page),
        AutoRoute(page: PopularInstructorsBottomSheetRoute.page),
        AutoRoute(page: CourseDetailRoute.page),
        AutoRoute(page: AllCoursesBottomSheetRoute.page)
      ];
}

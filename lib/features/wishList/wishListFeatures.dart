import 'package:travel_app/entities/course/models/course_model.dart';
import 'package:travel_app/shared/db/course_db.dart';

class WishListFeatures {
  Future<List<Map<String, dynamic>>> getCourse() async {
    final db = await initDB();
    return await db.rawQuery('SELECT * FROM course '
        'INNER JOIN courseOverview ON course.id = courseOverview.courseId '
        'INNER JOIN instructor ON course.id = instructor.courseId '
        'INNER JOIN reviews ON course.id = reviews.courseId ');
  }

  Future<void> addCourseToWishList({
    required CourseModel course,
    required String imagePath,
  }) async {
    await insertCourse(course, imagePath);
    await insertCourseOverview(
      course.courseOverview.courseId,
      course.courseOverview.hoursOnDemandVideo,
      course.courseOverview.articlesAmount,
      course.courseOverview.amountResources,
      course.courseOverview.anyTimeAccess ? 1 : 0,
      course.courseOverview.accessMobileTV ? 1 : 0,
      course.courseOverview.certificatePresence ? 1 : 0,
      course.courseOverview.studentsAmount,
    );
    await insertInstructors(course.instructor);
    await insertReviews(course.reviews);
  }
}

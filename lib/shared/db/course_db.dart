import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:education_app/entities/all_topics_bottom_sheet/models/topic.dart';
import 'package:education_app/entities/course/models/course_model.dart';

Future<Database> initDB() async {
  return openDatabase(
    join(await getDatabasesPath(), 'wishlist_db.db'),
    onCreate: (db, version) {
      db.execute(
        'CREATE TABLE course( '
        'id TEXT PRIMARY KEY, '
        'title TEXT, '
        'totalLessonsTime TEXT, '
        'description TEXT, '
        'coursePrice INT, '
        'courseImageName TEXT '
        ')',
      );
      db.execute(
        'CREATE TABLE courseOverview('
        'idOverview INTEGER PRIMARY KEY, '
        'courseId TEXT, '
        'hoursOnDemandVideo INTEGER, '
        'articlesAmount INTEGER, '
        'amountResources INTEGER, '
        'anyTimeAccess INTEGER, '
        'accessMobileTV INTEGER, '
        'certificatePresence INTEGER, '
        'studentsAmount INTEGER, '
        'FOREIGN KEY(courseId) REFERENCES course(id) ON DELETE CASCADE, '
        'UNIQUE(courseId)'
        ')',
      );
      db.execute(
        'CREATE TABLE instructor('
        'id INTEGER PRIMARY KEY, '
        'courseId TEXT, '
        'firstName TEXT, '
        'lastName TEXT, '
        'instructorTopics TEXT, '
        'studentsAmount TEXT, '
        'coursesAmount TEXT, '
        'FOREIGN KEY(courseId) REFERENCES course(id) ON DELETE CASCADE, '
        'UNIQUE(courseId)'
        ')',
      );
      db.execute(
        'CREATE TABLE reviews('
        'reviewId INTEGER PRIMARY KEY, '
        'courseId TEXT, '
        'userFirstName TEXT, '
        'userLastName TEXT, '
        'timestamp TEXT, '
        'reviewText TEXT, '
        'reviewMark TEXT, '
        'FOREIGN KEY(courseId) REFERENCES course(id) ON DELETE CASCADE, '
        'UNIQUE(courseId)'
        ')',
      );
    },
    onOpen: (db) {
      print('DB is opened');
      print('$db');
    },
    version: 1,
  );
}

Future<void> insertCourse(CourseModel course, String imagePath) async {
  final db = await initDB();
  await db.insert(
    'course',
    {
      "id": course.id,
      "title": course.title,
      "totalLessonsTime": course.totalLessonsTime,
      "description": course.description,
      "coursePrice": course.coursePrice,
      "courseImageName": imagePath,
    },
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<void> insertCourseOverview(
  String courseId,
  int hoursOnDemandVideo,
  int articlesAmount,
  int amountResources,
  int anyTimeAccess,
  int accessMobileTV,
  int certificatePresence,
  int studentsAmount,
) async {
  final db = await initDB();
  await db.insert(
    'courseOverview',
    {
      'courseId': courseId,
      'hoursOnDemandVideo': hoursOnDemandVideo,
      'articlesAmount': articlesAmount,
      'amountResources': amountResources,
      'anyTimeAccess': anyTimeAccess,
      'accessMobileTV': accessMobileTV,
      'certificatePresence': certificatePresence,
      'studentsAmount': studentsAmount,
    },
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<void> insertInstructors(Instructors instructor) async {
  final db = await initDB();
  await db.insert(
    'instructor',
    {
      "id": instructor.id,
      "courseId": instructor.courseId,
      "firstName": instructor.firstName,
      "lastName": instructor.lastName,
      'instructorTopics': instructor.instructorTopics,
      "studentsAmount": instructor.studentsAmount,
      "coursesAmount": instructor.coursesAmount,
    },
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<void> insertReviews(List<CourseReviews> reviews) async {
  final db = await initDB();
  await db.transaction((txn) async {
    for (var review in reviews) {
      await txn.insert(
          'reviews',
          {
            'reviewId': review.reviewId,
            'courseId': review.courseId,
            'userFirstName': review.userFirstName,
            'userLastName': review.userLastName,
            'timestamp': review.timestamp,
            'reviewText': review.reviewText,
            'reviewMark': review.reviewMark,
          },
          conflictAlgorithm: ConflictAlgorithm.replace);
    }
  });
}

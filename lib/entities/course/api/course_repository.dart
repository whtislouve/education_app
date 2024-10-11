import 'package:education_app/entities/course/api/course_interceptor.dart';
import 'package:education_app/shared/api/dio_client/dio_client.dart';
import 'package:education_app/shared/api/dio_client/response_model.dart';

class CourseRepository {
  final dioClient = DioClient()..dio.interceptors.add(CourseInterceptor());

  ResponseModel responseModel = ResponseModel();

  Future getCourseDetailData() async {
    responseModel = await dioClient.makeRequest(
        "https://dummyjson.com/c/3ea1-f405-47e2-bc9d", responseModel);
  }

  Future getPopularCourseData() async {
    responseModel = await dioClient.makeRequest(
        "https://dummyjson.com/c/ff75-0db3-4670-8013", responseModel);
  }

  final abc = {
    "popularInstructors": [
      {
        "id": 1,
        "courseId": "7,9,10",
        "firstName": "Daniel",
        "lastName": "Wallet",
        "instructorTopics": "UX Deisgn, UI Design, Graphic Design",
        "studentsAmount": 49091,
        "coursesAmount": 20
      },
      {
        "id": 2,
        "courseId": "8",
        "firstName": "Gatot",
        "lastName": "Subroto",
        "instructorTopics": "Graphic Design, Illustration, 3D Design",
        "studentsAmount": 25671,
        "coursesAmount": 11
      },
      {
        "id": 3,
        "courseId": "11",
        "firstName": "Sojo",
        "lastName": "Chichije",
        "instructorTopics": "Modern History, Renaissance Art",
        "studentsAmount": 1693,
        "coursesAmount": 2
      },
      {
        "id": 4,
        "courseId": "12",
        "firstName": "Olyo",
        "lastName": "Subashili",
        "instructorTopics": "Eastern History, Guitar lessons, ",
        "studentsAmount": 1700,
        "coursesAmount": 3
      },
      {
        "id": 5,
        "courseId": "13,14",
        "firstName": "Quoko",
        "lastName": "Ruosa",
        "instructorTopics": "FL Studio, Music mixing",
        "studentsAmount": 3293,
        "coursesAmount": 3
      },
      {
        "id": 6,
        "courseId": "15,18",
        "firstName": "Acha",
        "lastName": "Sumijadze",
        "instructorTopics": "Data Structures, Introduction to Data Bases",
        "studentsAmount": 5492,
        "coursesAmount": 2
      },
      {
        "id": 7,
        "courseId": "16,17",
        "firstName": "Olorija",
        "lastName": "Lapiario",
        "instructorTopics":
            "Relative Data Bases, Algorithms, Object Oriented Programming",
        "studentsAmount": 7094,
        "coursesAmount": 4
      },
      {
        "id": 8,
        "courseId": "19,22",
        "firstName": "Rovoa",
        "lastName": "Minato",
        "instructorTopics": "Team Building, Marketing Introduction",
        "studentsAmount": 3298,
        "coursesAmount": 2
      },
      {
        "id": 9,
        "courseId": "20,21",
        "firstName": "Lodis",
        "lastName": "Jotocik",
        "instructorTopics":
            "Financial literacy, Banking systems, Banking Deposits & Accounts",
        "studentsAmount": 6812,
        "coursesAmount": 4
      },
      {
        "id": 10,
        "courseId": "23,26",
        "firstName": "Birejk",
        "lastName": "Usadi",
        "instructorTopics": "Investment Strategies",
        "studentsAmount": 2100,
        "coursesAmount": 1
      },
      {
        "id": 11,
        "courseId": "24,25",
        "firstName": "Terik",
        "lastName": "Poajuch",
        "instructorTopics": "Charts Reading, Technical Analysis",
        "studentsAmount": 4871,
        "coursesAmount": 2
      }
    ]
  };
}

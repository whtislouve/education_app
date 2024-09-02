import 'dart:convert';

import 'package:travel_app/shared/api/dio_client/dio_client.dart';
import 'package:dio/dio.dart';
import 'dart:developer' as developer;

import '../models/topic.dart';

class TopicsRepository {
  final dioClient = DioClient();

  Future getTopicsData() async {
    List<Topic> topics = [];
    Response responce =
        await dioClient.dio.get("https://dummyjson.com/c/a3f9-691f-4e37-802c");
    // topics = responce.data.topicsData
    //     .map((element) => Topic.fromJson(element))
    //     .toList();
    responce.data["topicsData"].forEach((topic) => {
          topics.add(Topic.fromJson({
            "title": topic["title"],
            "shortDescription": topic["shortDescription"],
            "fullDescription": topic["fullDescription"],
            "subTopics": topic["subTopics"],
            "instructors": topic["instructors"]
          }))
        });
    return topics;
  }
}

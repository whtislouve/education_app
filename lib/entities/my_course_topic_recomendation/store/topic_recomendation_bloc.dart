import "package:flutter_bloc/flutter_bloc.dart";
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:education_app/entities/all_topics_bottom_sheet/models/topic.dart';
import 'package:education_app/entities/my_course_topic_recomendation/api/topic_recomendation_repository.dart';

part 'topic_recomendation_states.dart';
part 'topic_recomendation_events.dart';
part 'topic_recomendation_bloc.freezed.dart';

class TopicRecomendationBloc
    extends Bloc<TopicRecomendationEvents, TopicRecomendationStates> {
  TopicRecomendationRepository repository;
  List<Topic> recomendationTopicList = [];
  TopicRecomendationBloc({required this.repository})
      : super(const TopicRecomendationStates.initailState()) {
    on<TopicRecomendationEvents>(
      (event, emit) async {
        await event.map(
            sendTopicRecomendationRequest: (_) async =>
                await getTopicRecomendationData(emit));
      },
    );
  }
  Future getTopicRecomendationData(
      Emitter<TopicRecomendationStates> emit) async {
    await repository.getTopicRecomendationData();
    trasformFromResposeToModel(emit);
  }

  void trasformFromResposeToModel(Emitter<TopicRecomendationStates> emit) {
    if (repository.responseModel.errorText == "") {
      repository.responseModel.responseData["topicsData"].forEach((topic) => {
            recomendationTopicList.add(Topic.fromJson({
              "title": topic["title"],
              "shortDescription": topic["shortDescription"],
              "fullDescription": topic["fullDescription"],
              "subTopics": topic["subTopics"],
              "instructors": topic["instructors"],
              "courses": topic["courses"],
            }))
          });
      emit(TopicRecomendationStates.acceptingTopicRecomendationData(
          recomendationTopicsList: recomendationTopicList));
    } else {
      emit(TopicRecomendationStates.errorSendigTopicRecomendationRequest(
          errorText: repository.responseModel.errorText));
    }
  }
}

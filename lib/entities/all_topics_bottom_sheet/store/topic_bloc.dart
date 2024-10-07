import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/entities/all_topics_bottom_sheet/api/all_topics_bottom_sheet_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_app/entities/all_topics_bottom_sheet/models/topic.dart';

part 'topic_event.dart';
part 'topic_state.dart';
part 'topic_bloc.freezed.dart';

class TopicBloc extends Bloc<TopicEvent, TopicState> {
  AllTopicsBottomSheetRepository repository;
  List<Topic> topics = [];

  TopicBloc({required this.repository})
      : super(const TopicState.initialTopicState()) {
    on<TopicEvent>((event, emit) async {
      await event.map(
          allTopicButtonPressed: (_) async => {
                await Future.delayed(const Duration(seconds: 2)),
                await allTopicButtonPressedEvent(emit),
              });
    });
  }
  Future allTopicButtonPressedEvent(Emitter<TopicState> emit) async {
    await repository.getTopicsData();
    if (repository.responseModel.errorText == '') {
      repository.responseModel.responseData["topicsData"].forEach((topic) => {
            topics.add(Topic.fromJson({
              "title": topic["title"],
              "shortDescription": topic["shortDescription"],
              "fullDescription": topic["fullDescription"],
              "subTopics": topic["subTopics"],
              "instructors": topic["instructors"],
              "courses": topic["courses"],
            }))
          });
      emit(TopicState.acceptingTopicData(topics: topics));
    } else {
      emit(TopicState.errorSendingTopicRequest(
          error: repository.responseModel.errorText));
    }
  }
}

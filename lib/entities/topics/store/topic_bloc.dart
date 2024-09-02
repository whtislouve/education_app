import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/entities/topics/api/topics_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_app/entities/topics/models/topic.dart';

part 'topic_event.dart';
part 'topic_state.dart';
part 'topic_bloc.freezed.dart';

class TopicBloc extends Bloc<TopicEvent, TopicState> {
  TopicsRepository repository;
  List<Topic> topics = [];
  TopicBloc({required this.repository})
      : super(TopicState.initialTopicState()) {
    on<TopicEvent>((event, emit) async {
      if (state is _InitialTopicState) {
        topics = await repository.getTopicsData();
        emit(TopicState.acceptingTopicData(topics: topics));
      }
    });
  }
}

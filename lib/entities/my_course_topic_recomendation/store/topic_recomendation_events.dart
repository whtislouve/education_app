part of 'topic_recomendation_bloc.dart';

@freezed
class TopicRecomendationEvents with _$TopicRecomendationEvents {
  const factory TopicRecomendationEvents.sendTopicRecomendationRequest() =
      SendTopicRecomendationRequestEvent;
}

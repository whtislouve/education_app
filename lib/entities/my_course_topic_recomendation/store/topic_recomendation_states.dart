part of 'topic_recomendation_bloc.dart';

@freezed
class TopicRecomendationStates with _$TopicRecomendationStates {
  const factory TopicRecomendationStates.initailState() =
      _InitialTopicRecomendationState;
  const factory TopicRecomendationStates.acceptingTopicRecomendationData(
          {required List<Topic> recomendationTopicsList}) =
      _AcceptingTopicRecomendationDataState;
  const factory TopicRecomendationStates.errorSendigTopicRecomendationRequest(
      {required String errorText}) = _ErrorSendigTopicRecomendationRequest;
}

part of 'topic_bloc.dart';

@freezed
class TopicState with _$TopicState {
  const factory TopicState.initialTopicState() = _InitialTopicState;
  const factory TopicState.acceptingTopicData({required List<Topic> topics}) =
      _AcceptingTopicData;
  const factory TopicState.errorSendingTopicRequest({required String error}) =
      _ErrorSendingTopicRequest;
}

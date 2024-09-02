import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/entities/topics/api/topics_repository.dart';
import 'package:travel_app/entities/topics/models/topic.dart';
import 'package:travel_app/entities/topics/store/topic_bloc.dart';
import 'package:travel_app/entities/topics/ui/topic_card.dart';
import 'package:travel_app/widgets/ui/all_topics/all_topics_title_section.dart';
import 'package:travel_app/widgets/ui/all_topics/topic_image.dart';
import 'package:travel_app/widgets/ui/all_topics/topic_title_section.dart';
import 'package:travel_app/gen/assets.gen.dart';

class AllTopicsBottomSheet extends StatelessWidget {
  AllTopicsBottomSheet({super.key});
  TopicsRepository topicsRepository = TopicsRepository();
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 0.9,
      child: BlocProvider(
        create: (_) => TopicBloc(repository: topicsRepository)
          ..add(const TopicEvent.allTopicButtonPressed()),
        child: BlocBuilder<TopicBloc, TopicState>(
          builder: (context, state) {
            return state.when(
                initialTopicState: () => const Text('initial state'),
                acceptingTopicData: (List<Topic> topics) =>
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          const AllTopicsTitleSection(),
                          Container(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                                itemCount: topics.length,
                                itemBuilder: (context, index) {
                                  return TopicCard(
                                      topicImage:
                                          Assets.explore.artAndHumanitiesTopics,
                                      topicTitle: topics[index].title,
                                      topicDescription:
                                          topics[index].shortDescription);
                                }),
                          ),
                        ],
                      ),
                    ),
                errorSendingTopicRequest: (error) => Text("error"));
          },
        ),
      ),
    );
  }
}

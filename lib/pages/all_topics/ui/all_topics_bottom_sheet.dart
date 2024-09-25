import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/app/routes/app_router.dart';
import 'package:travel_app/entities/all_topics_bottom_sheet/api/all_topics_bottom_sheet_repository.dart';
import 'package:travel_app/entities/all_topics_bottom_sheet/models/topic.dart';
import 'package:travel_app/entities/all_topics_bottom_sheet/store/topic_bloc.dart';
import 'package:travel_app/entities/all_topics_bottom_sheet/ui/topic_card.dart';
import 'package:travel_app/widgets/ui/all_topics/all_topics_title_section.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/widgets/ui/bottom_sheet_title_section.dart/bottom_sheet_title_section.dart';

@RoutePage()
class AllTopicsBottomSheetPage extends StatelessWidget {
  AllTopicsBottomSheetPage({super.key});
  AllTopicsBottomSheetRepository topicsRepository =
      AllTopicsBottomSheetRepository();
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
                initialTopicState: () => const Center(
                      child: Text("Loading..."),
                    ),
                acceptingTopicData: (List<Topic> topics) =>
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          const BottomSheetTitleSection(title: "All Topics"),
                          const Divider(
                            color: Color.fromARGB(162, 158, 158, 158),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                                itemCount: topics.length,
                                itemBuilder: (context, index) {
                                  return TopicCard(
                                      onPressed: () {
                                        context.router.push(
                                            TopicRoute(topic: topics[index]));
                                      },
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
                errorSendingTopicRequest: (error) =>
                    Center(child: Text("Error: $error")));
          },
        ),
      ),
    );
  }
}

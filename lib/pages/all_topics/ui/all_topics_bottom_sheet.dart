import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/app/routes/app_router.dart';
import 'package:travel_app/entities/all_topics_bottom_sheet/api/all_topics_bottom_sheet_repository.dart';
import 'package:travel_app/entities/all_topics_bottom_sheet/models/topic.dart';
import 'package:travel_app/entities/all_topics_bottom_sheet/store/topic_bloc.dart';
import 'package:travel_app/entities/topic/models/topic_image.dart';
import 'package:travel_app/shared/ui/horizontal_card_shimmer/horizontal_card_shimmer.dart';
import 'package:travel_app/entities/all_topics_bottom_sheet/ui/topic_card.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:travel_app/widgets/ui/bottom_sheet_title_section.dart/bottom_sheet_title_section.dart';

@RoutePage()
class AllTopicsBottomSheetPage extends StatelessWidget {
  AllTopicsBottomSheetPage({super.key});
  AllTopicsBottomSheetRepository topicsRepository =
      AllTopicsBottomSheetRepository();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    // final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 0.9,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const BottomSheetTitleSection(title: "All Topics"),
            const Divider(
              color: Color.fromARGB(162, 158, 158, 158),
            ),
            BlocProvider(
              create: (_) => TopicBloc(repository: topicsRepository)
                ..add(const TopicEvent.allTopicButtonPressed()),
              child: BlocBuilder<TopicBloc, TopicState>(
                builder: (context, state) {
                  return state.when(
                      initialTopicState: () => const HorizontalCardShimmer(
                            cardsAmount: 6,
                          ),
                      acceptingTopicData: (List<Topic> topics) => SizedBox(
                            height: screenHeight,
                            child: ListView.builder(
                                itemCount: topics.length,
                                itemBuilder: (context, index) {
                                  return TopicCard(
                                      onPressed: () {
                                        context.router.push(
                                            TopicRoute(topic: topics[index]));
                                      },
                                      topicImage: index >
                                              TopicImage.imageList.length - 1
                                          ? TopicImage.imageList[(index -
                                                  TopicImage
                                                      .imageList.length) ~/
                                              (index ~/
                                                  TopicImage.imageList.length)]
                                          : TopicImage.imageList[index],
                                      topicTitle: topics[index].title,
                                      topicDescription:
                                          topics[index].shortDescription);
                                }),
                          ),
                      errorSendingTopicRequest: (error) =>
                          Center(child: Text("Error: $error")));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

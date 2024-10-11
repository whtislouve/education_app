import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:education_app/app/routes/app_router.dart';
import 'package:education_app/entities/all_topics_bottom_sheet/models/topic.dart';
import 'package:education_app/entities/all_topics_bottom_sheet/ui/topic_card.dart';
import 'package:education_app/entities/my_course_topic_recomendation/api/topic_recomendation_repository.dart';
import 'package:education_app/entities/my_course_topic_recomendation/store/topic_recomendation_bloc.dart';
import 'package:education_app/entities/topic/models/topic_image.dart';
import 'package:education_app/pages/all_topics/ui/all_topics_bottom_sheet.dart';
import 'package:education_app/shared/ui/common_content_header/common_content_header.dart';
import 'package:education_app/shared/ui/empty_course_purchase_illustration/empty_course_purchase_widget.dart';
import 'package:education_app/shared/ui/horizontal_card_shimmer/horizontal_card_shimmer.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';

@RoutePage()
class MyCoursePage extends StatefulWidget {
  const MyCoursePage({super.key});

  @override
  State<MyCoursePage> createState() => _MyCoursePageState();
}

class _MyCoursePageState extends State<MyCoursePage>
    with AutomaticKeepAliveClientMixin {
  TopicRecomendationRepository recomendationRepository =
      TopicRecomendationRepository();
  @override
  bool get wantKeepAlive => false;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    super.build(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.08,
                margin: EdgeInsets.only(
                    top: screenHeight * 0.05, left: screenWidth * 0.025),
                alignment: Alignment.centerLeft,
                child: Text(
                  "My Course",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const EmptyCoursePurchaseWidget(),
              Text(
                "Let us know what you will learn?",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: screenHeight * 0.01),
              const Text(
                "Your course will go here",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: screenHeight * 0.1),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.025),
                child: CommonContentHeader(
                    title: "Recomendation Topics",
                    headerButtonWidget: TextButton(
                      onPressed: () {
                        showBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return AllTopicsBottomSheetPage();
                            });
                      },
                      child: const Text("All Topics"),
                    )),
              ),
              BlocProvider(
                create: (_) =>
                    TopicRecomendationBloc(repository: recomendationRepository)
                      ..add(const TopicRecomendationEvents
                          .sendTopicRecomendationRequest()),
                child: BlocBuilder<TopicRecomendationBloc,
                    TopicRecomendationStates>(
                  builder: (context, state) {
                    return state.when(
                        initailState: () => SizedBox(
                            width: screenWidth,
                            height: screenHeight * 0.36,
                            child: const HorizontalCardShimmer(cardsAmount: 3)),
                        acceptingTopicRecomendationData:
                            (List<Topic> recomendationTopics) => SizedBox(
                                  width: screenWidth,
                                  height: screenHeight *
                                      0.12 *
                                      recomendationTopics.length,
                                  child: Column(
                                      children: List.generate(
                                          recomendationTopics.length,
                                          (index) => TopicCard(
                                              topicImage:
                                                  TopicImage.imageList[index],
                                              topicTitle:
                                                  recomendationTopics[index]
                                                      .title,
                                              topicDescription:
                                                  recomendationTopics[index]
                                                      .shortDescription,
                                              onPressed: () {
                                                context.router.push(TopicRoute(
                                                    topic: recomendationTopics[
                                                        index]));
                                              }))
                                      // recomendationTopics
                                      //     .map((topic) => TopicCard(
                                      //         topicImage:
                                      //             'assets/explore/design_topic_image.svg',
                                      //         topicTitle: topic.title,
                                      //         topicDescription:
                                      //             topic.shortDescription,
                                      //         onPressed: () {}))
                                      //     .toList()),
                                      ),
                                ),
                        // SizedBox(
                        //     // width: screenWidth,
                        //     height: screenHeight * 0.4,
                        //     child: ListView.builder(
                        //         itemCount: recomendationTopics.length,
                        //         itemBuilder: (context, index) {
                        //           return TopicCard(
                        //               topicImage:
                        //                   'assets/explore/design_topic_image.svg',
                        //               topicTitle:
                        //                   recomendationTopics[index].title,
                        //               topicDescription:
                        //                   recomendationTopics[index]
                        //                       .shortDescription,
                        //               onPressed: () {});
                        //         })),
                        errorSendigTopicRecomendationRequest: (String error) =>
                            Text(error));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

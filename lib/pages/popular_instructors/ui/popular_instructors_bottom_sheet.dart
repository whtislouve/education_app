import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:education_app/entities/popular_instructors_bottom_sheet/api/popular_instructors_bottom_sheet_repository.dart';
import 'package:education_app/entities/popular_instructors_bottom_sheet/model/popular_instructors_model.dart';
import 'package:education_app/entities/popular_instructors_bottom_sheet/store/popular_instructors_bottom_sheet_bloc.dart';
import 'package:education_app/entities/topic/ui/popular_instructor_card.dart';
import 'package:education_app/shared/ui/horizontal_card_shimmer/horizontal_card_shimmer.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:education_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';
import 'package:education_app/widgets/ui/bottom_sheet_title_section.dart/bottom_sheet_title_section.dart';

@RoutePage()
class PopularInstructorsBottomSheetPage extends StatelessWidget {
  PopularInstructorsBottomSheetPage({super.key});
  final PopularInstructorsBottomSheetRepository repository =
      PopularInstructorsBottomSheetRepository();
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 0.9,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const BottomSheetTitleSection(title: "Popular Instructors"),
            const Divider(
              color: Color.fromARGB(162, 158, 158, 158),
            ),
            BlocProvider(
              create: (_) =>
                  PopularInstructorsBottomSheetBloc(repository: repository)
                    ..add(const PopularInstructorsBottomSheetEvents
                        .popularInstructorsButtonPressed()),
              child: BlocBuilder<PopularInstructorsBottomSheetBloc,
                  PopularInstructorsBottomSheetStates>(
                builder: (context, state) {
                  return state.when(
                      initialState: () =>
                          const HorizontalCardShimmer(cardsAmount: 6),
                      acceptingPopularInstructorsData: (List<
                                  PopularInstructorsModel>
                              instructors) =>
                          Container(
                            padding: EdgeInsets.only(
                              left: screenWidth * 0.04,
                              top: screenHeight * 0.03,
                              right: screenWidth * 0.04,
                            ),
                            width: screenWidth,
                            height: screenHeight * 0.15 * instructors.length,
                            child:
                                LayoutBuilder(builder: (context, constraints) {
                              return SizeInheritedWidget(
                                maxWidth: constraints.maxWidth * 1.3,
                                maxHeight: screenHeight * 0.15,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: instructors
                                      .map((instructor) => Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              PopularInstructorCard(
                                                firstName: instructor.firstName,
                                                lastName: instructor.lastName,
                                                instructorTopics:
                                                    instructor.instructorTopics,
                                                studentsAmount:
                                                    instructor.studentsAmount,
                                                coursesAmount:
                                                    instructor.coursesAmount,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: screenHeight * 0.01,
                                                  bottom: screenHeight * 0.015,
                                                ),
                                                child: const Divider(
                                                    color: Color.fromARGB(
                                                        96, 158, 158, 158)),
                                              )
                                            ],
                                          ))
                                      .toList(),
                                ),
                              );
                            }),
                          ),
                      errorSendingRequest: (String error) => Center(
                            child: Text("Error: $error"),
                          ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

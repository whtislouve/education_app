import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/entities/popular_instructors_bottom_sheet/api/popular_instructors_bottom_sheet_repository.dart';
import 'package:travel_app/entities/popular_instructors_bottom_sheet/model/popular_instructors_model.dart';
import 'package:travel_app/entities/popular_instructors_bottom_sheet/store/popular_instructors_bottom_sheet_bloc.dart';
import 'package:travel_app/entities/topic/ui/popular_instructor_card.dart';
import 'package:travel_app/widgets/ui/bottom_sheet_title_section.dart/bottom_sheet_title_section.dart';

@RoutePage()
class PopularInstructorsBottomSheetPage extends StatelessWidget {
  PopularInstructorsBottomSheetPage({super.key});
  PopularInstructorsBottomSheetRepository repository =
      PopularInstructorsBottomSheetRepository();
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 0.9,
      child: BlocProvider(
        create: (_) => PopularInstructorsBottomSheetBloc(repository: repository)
          ..add(const PopularInstructorsBottomSheetEvents
              .popularInstructorsButtonPressed()),
        child: BlocBuilder<PopularInstructorsBottomSheetBloc,
            PopularInstructorsBottomSheetStates>(
          builder: (context, state) {
            return state.when(
                initialState: () => Center(
                      child: Text("Loading"),
                    ),
                acceptingPopularInstructorsData:
                    (List<PopularInstructorsModel> instructors) =>
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              const BottomSheetTitleSection(
                                  title: "Popular Instructors"),
                              const Divider(
                                color: Color.fromARGB(162, 158, 158, 158),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 15, top: 25, right: 15),
                                width: MediaQuery.of(context).size.width,
                                height: 100 * instructors.length.toDouble(),
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
                                            ],
                                          ))
                                      .toList(),
                                ),
                              )
                            ],
                          ),
                        ),
                errorSendingRequest: (String error) => Center(
                      child: Text("Error: $error"),
                    ));
          },
        ),
      ),
    );
  }
}

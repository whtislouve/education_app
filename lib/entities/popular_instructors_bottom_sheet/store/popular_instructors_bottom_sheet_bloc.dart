import "package:flutter_bloc/flutter_bloc.dart";
import 'package:freezed_annotation/freezed_annotation.dart';
import "package:education_app/entities/popular_instructors_bottom_sheet/api/popular_instructors_bottom_sheet_repository.dart";
import "package:education_app/entities/popular_instructors_bottom_sheet/model/popular_instructors_model.dart";
part 'popular_instructors_bottom_sheet_events.dart';
part 'popular_instructors_bottom_sheet_states.dart';

part 'popular_instructors_bottom_sheet_bloc.freezed.dart';

class PopularInstructorsBottomSheetBloc extends Bloc<
    PopularInstructorsBottomSheetEvents, PopularInstructorsBottomSheetStates> {
  PopularInstructorsBottomSheetRepository repository;
  List<PopularInstructorsModel> popularInstructors = [];
  PopularInstructorsBottomSheetBloc({required this.repository})
      : super(PopularInstructorsBottomSheetStates.initialState()) {
    on<PopularInstructorsBottomSheetEvents>(
      (event, emit) async {
        await event.map(
            popularInstructorsButtonPressed: (_) async =>
                await popularInstructorsButtonPressedEvent(emit));
      },
    );
  }

  Future popularInstructorsButtonPressedEvent(
      Emitter<PopularInstructorsBottomSheetStates> emit) async {
    await repository.getInstructorsData();
    if (repository.responseModel.errorText == "") {
      repository.responseModel.responseData["popularInstructors"]
          .forEach((instructor) => {
                popularInstructors.add(PopularInstructorsModel.fromJson({
                  "id": instructor["id"],
                  "firstName": instructor["firstName"],
                  "lastName": instructor["lastName"],
                  "instructorTopics": instructor["instructorTopics"],
                  "studentsAmount": instructor["studentsAmount"],
                  "coursesAmount": instructor["coursesAmount"],
                }))
              });
      emit(PopularInstructorsBottomSheetStates.acceptingPopularInstructorsData(
          instructors: popularInstructors));
    } else {
      emit(PopularInstructorsBottomSheetStates.errorSendingRequest(
          error: repository.responseModel.errorText));
    }
  }
}

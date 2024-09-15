part of "popular_instructors_bottom_sheet_bloc.dart";

@freezed
class PopularInstructorsBottomSheetStates
    with _$PopularInstructorsBottomSheetStates {
  const factory PopularInstructorsBottomSheetStates.initialState() =
      _IntitalStatePopularInstructorsBottomSheet;
  const factory PopularInstructorsBottomSheetStates.acceptingPopularInstructorsData(
          {required List<PopularInstructorsModel> instructors}) =
      _AcceptingPopularInstructorsBottomSheetData;
  const factory PopularInstructorsBottomSheetStates.errorSendingRequest(
      {required String error}) = _ErrorSendingPopularInstructorsBottomSheet;
}

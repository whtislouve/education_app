class ResponseModel {
  ResponseModel({
    Map responseData = const {},
    String errorText = "",
  })  : _responseData = responseData,
        _errorText = errorText;
  ResponseModel copyWith({final Map? response, String? error}) {
    return ResponseModel(
      responseData: response ?? this.responseData,
      errorText: error ?? this.errorText,
    );
  }

  Map _responseData;
  String _errorText;
  Map get responseData => _responseData;
  String get errorText => _errorText;
  set errorText(String errorMessage) => this._errorText = errorMessage;
}

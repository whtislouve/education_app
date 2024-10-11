// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) {
  return _CourseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get totalLessonsTime => throw _privateConstructorUsedError;
  int get lessonsAmount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get coursePrice => throw _privateConstructorUsedError;
  String get courseImageName => throw _privateConstructorUsedError;
  CourseOverview get courseOverview => throw _privateConstructorUsedError;
  Instructors get instructor => throw _privateConstructorUsedError;
  List<CourseReviews> get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseModelCopyWith<CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) then) =
      _$CourseModelCopyWithImpl<$Res, CourseModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String totalLessonsTime,
      int lessonsAmount,
      String description,
      int coursePrice,
      String courseImageName,
      CourseOverview courseOverview,
      Instructors instructor,
      List<CourseReviews> reviews});

  $CourseOverviewCopyWith<$Res> get courseOverview;
  $InstructorsCopyWith<$Res> get instructor;
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res, $Val extends CourseModel>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? totalLessonsTime = null,
    Object? lessonsAmount = null,
    Object? description = null,
    Object? coursePrice = null,
    Object? courseImageName = null,
    Object? courseOverview = null,
    Object? instructor = null,
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      totalLessonsTime: null == totalLessonsTime
          ? _value.totalLessonsTime
          : totalLessonsTime // ignore: cast_nullable_to_non_nullable
              as String,
      lessonsAmount: null == lessonsAmount
          ? _value.lessonsAmount
          : lessonsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coursePrice: null == coursePrice
          ? _value.coursePrice
          : coursePrice // ignore: cast_nullable_to_non_nullable
              as int,
      courseImageName: null == courseImageName
          ? _value.courseImageName
          : courseImageName // ignore: cast_nullable_to_non_nullable
              as String,
      courseOverview: null == courseOverview
          ? _value.courseOverview
          : courseOverview // ignore: cast_nullable_to_non_nullable
              as CourseOverview,
      instructor: null == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as Instructors,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<CourseReviews>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseOverviewCopyWith<$Res> get courseOverview {
    return $CourseOverviewCopyWith<$Res>(_value.courseOverview, (value) {
      return _then(_value.copyWith(courseOverview: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InstructorsCopyWith<$Res> get instructor {
    return $InstructorsCopyWith<$Res>(_value.instructor, (value) {
      return _then(_value.copyWith(instructor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseModelImplCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$$CourseModelImplCopyWith(
          _$CourseModelImpl value, $Res Function(_$CourseModelImpl) then) =
      __$$CourseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String totalLessonsTime,
      int lessonsAmount,
      String description,
      int coursePrice,
      String courseImageName,
      CourseOverview courseOverview,
      Instructors instructor,
      List<CourseReviews> reviews});

  @override
  $CourseOverviewCopyWith<$Res> get courseOverview;
  @override
  $InstructorsCopyWith<$Res> get instructor;
}

/// @nodoc
class __$$CourseModelImplCopyWithImpl<$Res>
    extends _$CourseModelCopyWithImpl<$Res, _$CourseModelImpl>
    implements _$$CourseModelImplCopyWith<$Res> {
  __$$CourseModelImplCopyWithImpl(
      _$CourseModelImpl _value, $Res Function(_$CourseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? totalLessonsTime = null,
    Object? lessonsAmount = null,
    Object? description = null,
    Object? coursePrice = null,
    Object? courseImageName = null,
    Object? courseOverview = null,
    Object? instructor = null,
    Object? reviews = null,
  }) {
    return _then(_$CourseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      totalLessonsTime: null == totalLessonsTime
          ? _value.totalLessonsTime
          : totalLessonsTime // ignore: cast_nullable_to_non_nullable
              as String,
      lessonsAmount: null == lessonsAmount
          ? _value.lessonsAmount
          : lessonsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coursePrice: null == coursePrice
          ? _value.coursePrice
          : coursePrice // ignore: cast_nullable_to_non_nullable
              as int,
      courseImageName: null == courseImageName
          ? _value.courseImageName
          : courseImageName // ignore: cast_nullable_to_non_nullable
              as String,
      courseOverview: null == courseOverview
          ? _value.courseOverview
          : courseOverview // ignore: cast_nullable_to_non_nullable
              as CourseOverview,
      instructor: null == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as Instructors,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<CourseReviews>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseModelImpl implements _CourseModel {
  const _$CourseModelImpl(
      {required this.id,
      required this.title,
      required this.totalLessonsTime,
      required this.lessonsAmount,
      required this.description,
      required this.coursePrice,
      required this.courseImageName,
      required this.courseOverview,
      required this.instructor,
      required final List<CourseReviews> reviews})
      : _reviews = reviews;

  factory _$CourseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String totalLessonsTime;
  @override
  final int lessonsAmount;
  @override
  final String description;
  @override
  final int coursePrice;
  @override
  final String courseImageName;
  @override
  final CourseOverview courseOverview;
  @override
  final Instructors instructor;
  final List<CourseReviews> _reviews;
  @override
  List<CourseReviews> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'CourseModel(id: $id, title: $title, totalLessonsTime: $totalLessonsTime, lessonsAmount: $lessonsAmount, description: $description, coursePrice: $coursePrice, courseImageName: $courseImageName, courseOverview: $courseOverview, instructor: $instructor, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.totalLessonsTime, totalLessonsTime) ||
                other.totalLessonsTime == totalLessonsTime) &&
            (identical(other.lessonsAmount, lessonsAmount) ||
                other.lessonsAmount == lessonsAmount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coursePrice, coursePrice) ||
                other.coursePrice == coursePrice) &&
            (identical(other.courseImageName, courseImageName) ||
                other.courseImageName == courseImageName) &&
            (identical(other.courseOverview, courseOverview) ||
                other.courseOverview == courseOverview) &&
            (identical(other.instructor, instructor) ||
                other.instructor == instructor) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      totalLessonsTime,
      lessonsAmount,
      description,
      coursePrice,
      courseImageName,
      courseOverview,
      instructor,
      const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseModelImplCopyWith<_$CourseModelImpl> get copyWith =>
      __$$CourseModelImplCopyWithImpl<_$CourseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseModelImplToJson(
      this,
    );
  }
}

abstract class _CourseModel implements CourseModel {
  const factory _CourseModel(
      {required final String id,
      required final String title,
      required final String totalLessonsTime,
      required final int lessonsAmount,
      required final String description,
      required final int coursePrice,
      required final String courseImageName,
      required final CourseOverview courseOverview,
      required final Instructors instructor,
      required final List<CourseReviews> reviews}) = _$CourseModelImpl;

  factory _CourseModel.fromJson(Map<String, dynamic> json) =
      _$CourseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get totalLessonsTime;
  @override
  int get lessonsAmount;
  @override
  String get description;
  @override
  int get coursePrice;
  @override
  String get courseImageName;
  @override
  CourseOverview get courseOverview;
  @override
  Instructors get instructor;
  @override
  List<CourseReviews> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$CourseModelImplCopyWith<_$CourseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseOverview _$CourseOverviewFromJson(Map<String, dynamic> json) {
  return _CourseOverview.fromJson(json);
}

/// @nodoc
mixin _$CourseOverview {
  String get courseId => throw _privateConstructorUsedError;
  int get hoursOnDemandVideo => throw _privateConstructorUsedError;
  int get articlesAmount => throw _privateConstructorUsedError;
  int get amountResources => throw _privateConstructorUsedError;
  bool get anyTimeAccess => throw _privateConstructorUsedError;
  bool get accessMobileTV => throw _privateConstructorUsedError;
  bool get certificatePresence => throw _privateConstructorUsedError;
  int get studentsAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseOverviewCopyWith<CourseOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseOverviewCopyWith<$Res> {
  factory $CourseOverviewCopyWith(
          CourseOverview value, $Res Function(CourseOverview) then) =
      _$CourseOverviewCopyWithImpl<$Res, CourseOverview>;
  @useResult
  $Res call(
      {String courseId,
      int hoursOnDemandVideo,
      int articlesAmount,
      int amountResources,
      bool anyTimeAccess,
      bool accessMobileTV,
      bool certificatePresence,
      int studentsAmount});
}

/// @nodoc
class _$CourseOverviewCopyWithImpl<$Res, $Val extends CourseOverview>
    implements $CourseOverviewCopyWith<$Res> {
  _$CourseOverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? hoursOnDemandVideo = null,
    Object? articlesAmount = null,
    Object? amountResources = null,
    Object? anyTimeAccess = null,
    Object? accessMobileTV = null,
    Object? certificatePresence = null,
    Object? studentsAmount = null,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      hoursOnDemandVideo: null == hoursOnDemandVideo
          ? _value.hoursOnDemandVideo
          : hoursOnDemandVideo // ignore: cast_nullable_to_non_nullable
              as int,
      articlesAmount: null == articlesAmount
          ? _value.articlesAmount
          : articlesAmount // ignore: cast_nullable_to_non_nullable
              as int,
      amountResources: null == amountResources
          ? _value.amountResources
          : amountResources // ignore: cast_nullable_to_non_nullable
              as int,
      anyTimeAccess: null == anyTimeAccess
          ? _value.anyTimeAccess
          : anyTimeAccess // ignore: cast_nullable_to_non_nullable
              as bool,
      accessMobileTV: null == accessMobileTV
          ? _value.accessMobileTV
          : accessMobileTV // ignore: cast_nullable_to_non_nullable
              as bool,
      certificatePresence: null == certificatePresence
          ? _value.certificatePresence
          : certificatePresence // ignore: cast_nullable_to_non_nullable
              as bool,
      studentsAmount: null == studentsAmount
          ? _value.studentsAmount
          : studentsAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseOverviewImplCopyWith<$Res>
    implements $CourseOverviewCopyWith<$Res> {
  factory _$$CourseOverviewImplCopyWith(_$CourseOverviewImpl value,
          $Res Function(_$CourseOverviewImpl) then) =
      __$$CourseOverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String courseId,
      int hoursOnDemandVideo,
      int articlesAmount,
      int amountResources,
      bool anyTimeAccess,
      bool accessMobileTV,
      bool certificatePresence,
      int studentsAmount});
}

/// @nodoc
class __$$CourseOverviewImplCopyWithImpl<$Res>
    extends _$CourseOverviewCopyWithImpl<$Res, _$CourseOverviewImpl>
    implements _$$CourseOverviewImplCopyWith<$Res> {
  __$$CourseOverviewImplCopyWithImpl(
      _$CourseOverviewImpl _value, $Res Function(_$CourseOverviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? hoursOnDemandVideo = null,
    Object? articlesAmount = null,
    Object? amountResources = null,
    Object? anyTimeAccess = null,
    Object? accessMobileTV = null,
    Object? certificatePresence = null,
    Object? studentsAmount = null,
  }) {
    return _then(_$CourseOverviewImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      hoursOnDemandVideo: null == hoursOnDemandVideo
          ? _value.hoursOnDemandVideo
          : hoursOnDemandVideo // ignore: cast_nullable_to_non_nullable
              as int,
      articlesAmount: null == articlesAmount
          ? _value.articlesAmount
          : articlesAmount // ignore: cast_nullable_to_non_nullable
              as int,
      amountResources: null == amountResources
          ? _value.amountResources
          : amountResources // ignore: cast_nullable_to_non_nullable
              as int,
      anyTimeAccess: null == anyTimeAccess
          ? _value.anyTimeAccess
          : anyTimeAccess // ignore: cast_nullable_to_non_nullable
              as bool,
      accessMobileTV: null == accessMobileTV
          ? _value.accessMobileTV
          : accessMobileTV // ignore: cast_nullable_to_non_nullable
              as bool,
      certificatePresence: null == certificatePresence
          ? _value.certificatePresence
          : certificatePresence // ignore: cast_nullable_to_non_nullable
              as bool,
      studentsAmount: null == studentsAmount
          ? _value.studentsAmount
          : studentsAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseOverviewImpl implements _CourseOverview {
  const _$CourseOverviewImpl(
      {required this.courseId,
      required this.hoursOnDemandVideo,
      required this.articlesAmount,
      required this.amountResources,
      required this.anyTimeAccess,
      required this.accessMobileTV,
      required this.certificatePresence,
      required this.studentsAmount});

  factory _$CourseOverviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseOverviewImplFromJson(json);

  @override
  final String courseId;
  @override
  final int hoursOnDemandVideo;
  @override
  final int articlesAmount;
  @override
  final int amountResources;
  @override
  final bool anyTimeAccess;
  @override
  final bool accessMobileTV;
  @override
  final bool certificatePresence;
  @override
  final int studentsAmount;

  @override
  String toString() {
    return 'CourseOverview(courseId: $courseId, hoursOnDemandVideo: $hoursOnDemandVideo, articlesAmount: $articlesAmount, amountResources: $amountResources, anyTimeAccess: $anyTimeAccess, accessMobileTV: $accessMobileTV, certificatePresence: $certificatePresence, studentsAmount: $studentsAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseOverviewImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.hoursOnDemandVideo, hoursOnDemandVideo) ||
                other.hoursOnDemandVideo == hoursOnDemandVideo) &&
            (identical(other.articlesAmount, articlesAmount) ||
                other.articlesAmount == articlesAmount) &&
            (identical(other.amountResources, amountResources) ||
                other.amountResources == amountResources) &&
            (identical(other.anyTimeAccess, anyTimeAccess) ||
                other.anyTimeAccess == anyTimeAccess) &&
            (identical(other.accessMobileTV, accessMobileTV) ||
                other.accessMobileTV == accessMobileTV) &&
            (identical(other.certificatePresence, certificatePresence) ||
                other.certificatePresence == certificatePresence) &&
            (identical(other.studentsAmount, studentsAmount) ||
                other.studentsAmount == studentsAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      courseId,
      hoursOnDemandVideo,
      articlesAmount,
      amountResources,
      anyTimeAccess,
      accessMobileTV,
      certificatePresence,
      studentsAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseOverviewImplCopyWith<_$CourseOverviewImpl> get copyWith =>
      __$$CourseOverviewImplCopyWithImpl<_$CourseOverviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseOverviewImplToJson(
      this,
    );
  }
}

abstract class _CourseOverview implements CourseOverview {
  const factory _CourseOverview(
      {required final String courseId,
      required final int hoursOnDemandVideo,
      required final int articlesAmount,
      required final int amountResources,
      required final bool anyTimeAccess,
      required final bool accessMobileTV,
      required final bool certificatePresence,
      required final int studentsAmount}) = _$CourseOverviewImpl;

  factory _CourseOverview.fromJson(Map<String, dynamic> json) =
      _$CourseOverviewImpl.fromJson;

  @override
  String get courseId;
  @override
  int get hoursOnDemandVideo;
  @override
  int get articlesAmount;
  @override
  int get amountResources;
  @override
  bool get anyTimeAccess;
  @override
  bool get accessMobileTV;
  @override
  bool get certificatePresence;
  @override
  int get studentsAmount;
  @override
  @JsonKey(ignore: true)
  _$$CourseOverviewImplCopyWith<_$CourseOverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseReviews _$CourseReviewsFromJson(Map<String, dynamic> json) {
  return _CourseReviews.fromJson(json);
}

/// @nodoc
mixin _$CourseReviews {
  int get reviewId => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  String get userFirstName => throw _privateConstructorUsedError;
  String get userLastName => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get reviewText => throw _privateConstructorUsedError;
  int get reviewMark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseReviewsCopyWith<CourseReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseReviewsCopyWith<$Res> {
  factory $CourseReviewsCopyWith(
          CourseReviews value, $Res Function(CourseReviews) then) =
      _$CourseReviewsCopyWithImpl<$Res, CourseReviews>;
  @useResult
  $Res call(
      {int reviewId,
      String courseId,
      String userFirstName,
      String userLastName,
      String timestamp,
      String reviewText,
      int reviewMark});
}

/// @nodoc
class _$CourseReviewsCopyWithImpl<$Res, $Val extends CourseReviews>
    implements $CourseReviewsCopyWith<$Res> {
  _$CourseReviewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? courseId = null,
    Object? userFirstName = null,
    Object? userLastName = null,
    Object? timestamp = null,
    Object? reviewText = null,
    Object? reviewMark = null,
  }) {
    return _then(_value.copyWith(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      userFirstName: null == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      userLastName: null == userLastName
          ? _value.userLastName
          : userLastName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      reviewText: null == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String,
      reviewMark: null == reviewMark
          ? _value.reviewMark
          : reviewMark // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseReviewsImplCopyWith<$Res>
    implements $CourseReviewsCopyWith<$Res> {
  factory _$$CourseReviewsImplCopyWith(
          _$CourseReviewsImpl value, $Res Function(_$CourseReviewsImpl) then) =
      __$$CourseReviewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int reviewId,
      String courseId,
      String userFirstName,
      String userLastName,
      String timestamp,
      String reviewText,
      int reviewMark});
}

/// @nodoc
class __$$CourseReviewsImplCopyWithImpl<$Res>
    extends _$CourseReviewsCopyWithImpl<$Res, _$CourseReviewsImpl>
    implements _$$CourseReviewsImplCopyWith<$Res> {
  __$$CourseReviewsImplCopyWithImpl(
      _$CourseReviewsImpl _value, $Res Function(_$CourseReviewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? courseId = null,
    Object? userFirstName = null,
    Object? userLastName = null,
    Object? timestamp = null,
    Object? reviewText = null,
    Object? reviewMark = null,
  }) {
    return _then(_$CourseReviewsImpl(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      userFirstName: null == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      userLastName: null == userLastName
          ? _value.userLastName
          : userLastName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      reviewText: null == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String,
      reviewMark: null == reviewMark
          ? _value.reviewMark
          : reviewMark // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseReviewsImpl implements _CourseReviews {
  const _$CourseReviewsImpl(
      {required this.reviewId,
      required this.courseId,
      required this.userFirstName,
      required this.userLastName,
      required this.timestamp,
      required this.reviewText,
      required this.reviewMark});

  factory _$CourseReviewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseReviewsImplFromJson(json);

  @override
  final int reviewId;
  @override
  final String courseId;
  @override
  final String userFirstName;
  @override
  final String userLastName;
  @override
  final String timestamp;
  @override
  final String reviewText;
  @override
  final int reviewMark;

  @override
  String toString() {
    return 'CourseReviews(reviewId: $reviewId, courseId: $courseId, userFirstName: $userFirstName, userLastName: $userLastName, timestamp: $timestamp, reviewText: $reviewText, reviewMark: $reviewMark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseReviewsImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.userFirstName, userFirstName) ||
                other.userFirstName == userFirstName) &&
            (identical(other.userLastName, userLastName) ||
                other.userLastName == userLastName) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.reviewText, reviewText) ||
                other.reviewText == reviewText) &&
            (identical(other.reviewMark, reviewMark) ||
                other.reviewMark == reviewMark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reviewId, courseId,
      userFirstName, userLastName, timestamp, reviewText, reviewMark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseReviewsImplCopyWith<_$CourseReviewsImpl> get copyWith =>
      __$$CourseReviewsImplCopyWithImpl<_$CourseReviewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseReviewsImplToJson(
      this,
    );
  }
}

abstract class _CourseReviews implements CourseReviews {
  const factory _CourseReviews(
      {required final int reviewId,
      required final String courseId,
      required final String userFirstName,
      required final String userLastName,
      required final String timestamp,
      required final String reviewText,
      required final int reviewMark}) = _$CourseReviewsImpl;

  factory _CourseReviews.fromJson(Map<String, dynamic> json) =
      _$CourseReviewsImpl.fromJson;

  @override
  int get reviewId;
  @override
  String get courseId;
  @override
  String get userFirstName;
  @override
  String get userLastName;
  @override
  String get timestamp;
  @override
  String get reviewText;
  @override
  int get reviewMark;
  @override
  @JsonKey(ignore: true)
  _$$CourseReviewsImplCopyWith<_$CourseReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/entities/popular_instructor_suggestion/ui/popular_instructor_suggestion_card.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';

class PopularInstructorSuggestionCarousel extends StatelessWidget {
  const PopularInstructorSuggestionCarousel({super.key});
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: screenWidth * 0.02),
          PopularInstructorSuggestionCard(
            subjectTitle: "Popular in music",
            subjectDescription: "Complete Guitar Lessons System-Beginner",
            subjectTeacher: "Alex Siholang",
            cardImage:
                Assets.popularTeachersCarousel.popularTeacherMale.provider(),
          ),
          SizedBox(width: screenWidth * 0.035),
          PopularInstructorSuggestionCard(
            subjectTitle: "Popular in Personal Development",
            subjectDescription: "Communication Skill Speak Like A Leader",
            subjectTeacher: "Susan Anastasya",
            cardImage:
                Assets.popularTeachersCarousel.popularTeacherFemale.provider(),
          ),
          SizedBox(width: screenWidth * 0.025),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';

class PopularTeacherSuggestionCard extends StatelessWidget {
  PopularTeacherSuggestionCard({
    super.key,
    required this.subjectTitle,
    required this.subjectDescription,
    required this.subjectTeacher,
    required this.cardImage,
  });
  final String subjectTitle;
  final String subjectDescription;
  final String subjectTeacher;
  ImageProvider<Object> cardImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 310,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(25),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: cardImage,
          )),
      child: Container(
        padding: const EdgeInsets.only(left: 15, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              subjectTitle,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Colors.amber[800]),
            ),
            Text(
              subjectDescription,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
            ),
            Text(
              subjectTeacher,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                    fontSize: 14,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

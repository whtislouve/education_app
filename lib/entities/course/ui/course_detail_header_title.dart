import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';

class CourseDetailHeaderTitle extends StatelessWidget {
  const CourseDetailHeaderTitle({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontSize: screenHeight * 0.028, height: 1.2)),
          SizedBox(height: screenHeight * 0.02),
          Text(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            description,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}

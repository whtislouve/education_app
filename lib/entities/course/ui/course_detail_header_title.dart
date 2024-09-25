import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontSize: 20, height: 1.2)),
          const SizedBox(height: 20),
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

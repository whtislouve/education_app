import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';

class PopularCoursesSuggestionCard extends StatelessWidget {
  const PopularCoursesSuggestionCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 260,
          height: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: Assets.explore.popularCourseImage1.provider(),
            ),
          ),
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '1h 12m',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8),
                      width: 5,
                      height: 5,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    Text(
                      '5 Lessons',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ],
                ),
                Icon(
                  Icons.bookmark_border_outlined,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 7),
          child: Text('How to Start an Amazon FBA store\non a Tight Budget', style: Theme.of(context).,),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: Text("Grabriella Susi"),
        ),
        Text('IDR 219.000'),
      ],
    );
  }
}

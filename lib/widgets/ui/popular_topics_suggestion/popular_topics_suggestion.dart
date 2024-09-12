import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';

class PopularTopicsSuggestion extends StatelessWidget {
  const PopularTopicsSuggestion({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Wrap(
        spacing: 10,
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            label: Text("Art and Humanities"),
            icon: Assets.explore.artAndHumanitiesTopics.image(scale: 1.5),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text("Finance & Accounting"),
            icon: Assets.explore.financeAndAccountingTopics.image(scale: 1.5),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text("Business"),
            icon: Assets.explore.businessTopics.image(scale: 1.5),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text("Design"),
            icon: Assets.explore.designTopics.image(scale: 1.5),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text("Computer"),
            icon: Assets.explore.computerTopics.image(scale: 1.5),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text("Information Technology"),
            icon: Assets.explore.informationTechnologyTopics.image(scale: 1.5),
          ),
        ],
      ),
    );
  }
}

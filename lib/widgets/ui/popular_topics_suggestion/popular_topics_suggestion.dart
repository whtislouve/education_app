import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';

class PopularTopicsSuggestion extends StatelessWidget {
  const PopularTopicsSuggestion({super.key});
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
      child: Wrap(
        spacing: screenWidth * 0.025,
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text("Art and Humanities"),
            icon: Assets.explore.artAndHumanitiesTopics.image(scale: 1.5),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text("Finance & Accounting"),
            icon: Assets.explore.financeAndAccountingTopics.image(scale: 1.5),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text("Business"),
            icon: Assets.explore.businessTopics.image(scale: 1.5),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text("Design"),
            icon: Assets.explore.designTopics.image(scale: 1.5),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text("Computer"),
            icon: Assets.explore.computerTopics.image(scale: 1.5),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text("Information Technology"),
            icon: Assets.explore.informationTechnologyTopics.image(scale: 1.5),
          ),
        ],
      ),
    );
  }
}

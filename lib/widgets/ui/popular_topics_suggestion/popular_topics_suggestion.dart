import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';

class PopularTopicsSuggestion extends StatelessWidget {
  const PopularTopicsSuggestion({super.key});
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;

    return Wrap(
      spacing: screenWidth * 0.025,
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          label: const Text("Art and Humanities"),
          icon: SvgPicture.asset(
              "assets/explore/art_and_humanities_topic_image.svg"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          label: const Text("Finance & Accounting"),
          icon: SvgPicture.asset(
              'assets/explore/finance_and_accounting_topic_image.svg'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          label: const Text("Business"),
          icon: SvgPicture.asset('assets/explore/business_topic_image.svg'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          label: const Text("Design"),
          icon: SvgPicture.asset('assets/explore/design_topic_image.svg'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          label: const Text("Computer"),
          icon: SvgPicture.asset('assets/explore/computer_topic_image.svg'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          label: const Text("Information Technology"),
          icon: SvgPicture.asset(
              'assets/explore/information_technology_topic_image.svg'),
        ),
      ],
    );
  }
}

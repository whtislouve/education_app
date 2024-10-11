import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:education_app/shared/ui/shimmer_placeholders/image_placeholder.dart';

class PopularInstructorSuggestionCardShimmer extends StatelessWidget {
  const PopularInstructorSuggestionCardShimmer({super.key});
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Shimmer.fromColors(
        loop: 3,
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: SizedBox(
          width: screenWidth * 1.4,
          height: screenHeight * 0.4,
          child: LayoutBuilder(builder: (context, constraints) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    2,
                    (_) => Row(
                          children: [
                            SizedBox(
                              width: constraints.maxWidth * 0.025,
                            ),
                            ImagePlaceholder(
                              imageWidth: constraints.maxWidth * 0.7,
                              imageHeight: constraints.maxHeight,
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.025,
                            )
                          ],
                        )),
              ),
            );
          }),
        ));
  }
}

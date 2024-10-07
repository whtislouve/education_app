import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:travel_app/shared/ui/shimmer_placeholders/image_placeholder.dart';
import 'package:travel_app/shared/ui/shimmer_placeholders/text_placeholder.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class PopularCoursesSuggestionCarouselShimmer extends StatelessWidget {
  const PopularCoursesSuggestionCarouselShimmer({super.key});
  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("No size data of Layout");
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return Shimmer.fromColors(
      loop: 3,
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return SizedBox(
              width: maxWidth * 0.6,
              height: maxHeight * 0.7,
              // color: Colors.white,
              child: LayoutBuilder(builder: (context, constraints) {
                return SizeInheritedWidget(
                  maxWidth: constraints.maxWidth,
                  maxHeight: constraints.maxHeight,
                  child: Column(
                    children: [
                      ImagePlaceholder(
                        imageWidth: constraints.maxWidth * 0.9,
                        imageHeight: constraints.maxHeight * 0.6,
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.03,
                      ),
                      const TextPlaceholder(),
                      SizedBox(
                        height: constraints.maxHeight * 0.02,
                      ),
                      const TextPlaceholder(),
                      SizedBox(
                        height: constraints.maxHeight * 0.02,
                      ),
                      const TextPlaceholder(),
                      SizedBox(
                        height: constraints.maxHeight * 0.02,
                      ),
                      const TextPlaceholder(),
                      SizedBox(
                        height: constraints.maxHeight * 0.02,
                      ),
                    ],
                  ),
                );
              }));
        },
      ),
    );
  }
}

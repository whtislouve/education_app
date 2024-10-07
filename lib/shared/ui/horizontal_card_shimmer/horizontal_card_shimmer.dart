import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:travel_app/shared/ui/shimmer_placeholders/image_placeholder.dart';
import 'package:travel_app/shared/ui/shimmer_placeholders/text_placeholder.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class HorizontalCardShimmer extends StatelessWidget {
  const HorizontalCardShimmer({
    super.key,
    required this.cardsAmount,
  });
  final int cardsAmount;
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
        width: screenWidth,
        height: screenHeight,
        child: ListView.builder(
            itemCount: cardsAmount,
            itemBuilder: (context, index) {
              return SizedBox(
                width: screenWidth,
                height: screenHeight * 0.1,
                child: LayoutBuilder(builder: (context, constraints) {
                  return SizeInheritedWidget(
                    maxHeight: constraints.maxHeight * 3.3,
                    maxWidth: constraints.maxWidth * 0.67,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImagePlaceholder(
                          imageWidth: constraints.maxWidth * 0.3,
                          imageHeight: constraints.maxHeight * 0.9,
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.02,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const TextPlaceholder(),
                            SizedBox(height: constraints.maxHeight * 0.02),
                            const TextPlaceholder(),
                            SizedBox(height: constraints.maxHeight * 0.02),
                            const TextPlaceholder(),
                            SizedBox(height: constraints.maxHeight * 0.02),
                            const TextPlaceholder(),
                            SizedBox(height: constraints.maxHeight * 0.02),
                            const TextPlaceholder(),
                            SizedBox(height: constraints.maxHeight * 0.02),
                            const TextPlaceholder(),
                            SizedBox(height: constraints.maxHeight * 0.02),
                            const TextPlaceholder(),
                            SizedBox(height: constraints.maxHeight * 0.02),
                          ],
                        )
                      ],
                    ),
                  );
                }),
              );
            }),
      ),
    );
  }
}

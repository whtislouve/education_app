import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class BottomSheetTitleSection extends StatelessWidget {
  const BottomSheetTitleSection({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.065,
      padding: EdgeInsets.only(
          left: screenWidth * 0.1,
          right: screenWidth * 0.05,
          top: screenHeight * 0.005),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: screenHeight * 0.021,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Done",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: screenHeight * 0.018,
                    color: Theme.of(context).colorScheme.primary),
              ))
        ],
      ),
    );
  }
}

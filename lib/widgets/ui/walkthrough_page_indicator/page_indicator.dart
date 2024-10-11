import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:education_app/app/routes/app_router.dart';
import 'package:education_app/shared/ui/common_button/common_button.dart';
import 'package:education_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.tabController,
    required this.currentPageIndex,
    required this.pageController,
    required this.context,
  });
  final TabController tabController;
  final PageController pageController;
  final int currentPageIndex;
  final BuildContext context;

  bool _isLastPageOfPageView(int indexOfPage) {
    return indexOfPage >= tabController.length;
  }

  void _updateCurrentPageIndex(int index) {
    if (_isLastPageOfPageView(index)) {
      _goToSignInPage(const SignInRoute());
    } else {
      tabController.index = index;
      pageController.animateToPage(index,
          duration: const Duration(microseconds: 500), curve: Curves.ease);
    }
  }

  void _goToSignInPage(PageRouteInfo<dynamic> route) {
    context.router.push(route);
  }

  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("No size info");
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return Container(
      margin: EdgeInsets.only(bottom: maxHeight * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TabPageSelector(
            controller: tabController,
            selectedColor: Colors.blue,
          ),
          CommonButton(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.secondary,
            buttonWidth: maxWidth * 0.4,
            buttonHeight: maxHeight * 0.065,
            actionOnPress: () {
              _updateCurrentPageIndex(currentPageIndex + 1);
            },
            child: _isLastPageOfPageView(currentPageIndex + 1)
                ? const Text("Get started")
                : const Text("Next"),
          ),
        ],
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/app/routes/app_router.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/pages/sign_in/ui/sign_in_page.dart';
import 'package:travel_app/shared/ui/common_button.dart';

import 'package:travel_app/shared/ui/walkthrough.dart';

@RoutePage()
class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({super.key});
  @override
  State<WalkthroughPage> createState() => _WalkthroughPageState();
}

class _WalkthroughPageState extends State<WalkthroughPage>
    with TickerProviderStateMixin {
  late PageController _pageController;
  late TabController _tabController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _tabController.dispose();
  }

  void _handlePageViewChanged(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  bool _isLastPageOfPageView(int indexOfPage) {
    return indexOfPage >= _tabController.length;
  }

  void _updateCurrentPageIndex(int index) {
    if (_isLastPageOfPageView(index)) {
      _goToSignInPage(const SignInRoute());
    } else {
      _tabController.index = index;
      _pageController.animateToPage(index,
          duration: const Duration(microseconds: 500), curve: Curves.ease);
    }
  }

  void _goToSignInPage(PageRouteInfo<dynamic> route) {
    context.router.push(route);
  }

  Widget pageIndicator() {
    return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TabPageSelector(
              controller: _tabController,
              selectedColor: Colors.blue,
            ),
            CommonButton(
              buttonWidth: 140,
              buttonHeight: 48,
              actionOnPress: () {
                _updateCurrentPageIndex(_currentPageIndex + 1);
              },
              child: _isLastPageOfPageView(_currentPageIndex + 1)
                  ? const Text("Get started")
                  : const Text("Next"),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              PageView(
                controller: _pageController,
                onPageChanged: _handlePageViewChanged,
                children: [
                  Walkthrough(
                    title: "Hello, brainiest\npeople!",
                    decription:
                        "Welcome to brainy academy!\nThe best community to learn and improve skills\nto level up our career.",
                    walkthroughPersonImage:
                        Assets.walkthrough.walkthroughPerson1,
                  ),
                  Walkthrough(
                    title: "Meet Our Expert\nInstructors!",
                    decription:
                        "Lets explore courses with our expert and\nprofessional instructors. Interactive learning and\nyou can give us feedback.",
                    walkthroughPersonImage:
                        Assets.walkthrough.walkthroughPerson2,
                  ),
                  Walkthrough(
                    title: "2 Ways\nCommunication!",
                    decription:
                        "Don’t worry if you have any obstacle while you\ndoing learn. Just click “Discussion” and you\ncan chat with instructor.",
                    walkthroughPersonImage:
                        Assets.walkthrough.walkthroughPerson3,
                  ),
                ],
              ),
              pageIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}

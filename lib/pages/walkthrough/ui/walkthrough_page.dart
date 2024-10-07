import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/entities/walkthrough/walkthrough.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';
import 'package:travel_app/widgets/ui/walkthrough_page_indicator/page_indicator.dart';

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

  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenHeight = mediaQuery.height;
    final screenWidth = mediaQuery.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight * 0.95,
          width: screenWidth,
          color: Colors.white,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SizeInheritedWidget(
                maxWidth: constraints.maxWidth,
                maxHeight: constraints.maxHeight,
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
                    PageIndicator(
                      tabController: _tabController,
                      currentPageIndex: _currentPageIndex,
                      pageController: _pageController,
                      context: context,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

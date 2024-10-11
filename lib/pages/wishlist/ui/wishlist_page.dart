import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/entities/topic/ui/course_card.dart';
import 'package:travel_app/features/wishList/wishListFeatures.dart';

import 'package:travel_app/shared/ui/empty_course_purchase_illustration/empty_course_purchase_widget.dart';
import 'package:travel_app/shared/ui/horizontal_card_shimmer/horizontal_card_shimmer.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});
  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => false;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    super.build(context);
    return Scaffold(
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: screenWidth,
              height: screenHeight * 0.08,
              margin: EdgeInsets.only(
                  top: screenHeight * 0.05, left: screenWidth * 0.025),
              alignment: Alignment.centerLeft,
              child: Text(
                "My Wishlist",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            FutureBuilder(
                future: Future.delayed(const Duration(seconds: 1),
                    () => WishListFeatures().getCourse()),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.3,
                      child: const HorizontalCardShimmer(
                        cardsAmount: 2,
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const EmptyCoursePurchaseWidget(),
                          Text(
                            "You have course saved",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          const Text(
                            "Save your favourite course to enroll them later",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    );
                  } else {
                    final List<Map<String, dynamic>> courses = snapshot.data!;
                    return SizedBox(
                      height: screenHeight * 0.7,
                      width: screenWidth,
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: courses.length,
                          itemBuilder: (context, index) {
                            final course = courses[index];
                            return Padding(
                              padding:
                                  EdgeInsets.only(left: screenWidth * 0.02),
                              child: CourseCard(
                                  courseTitle: course["title"],
                                  courseInstructor: course["firstName"],
                                  coursePrice: course["coursePrice"],
                                  onPressed: () {},
                                  imageName: '${course["courseImageName"]}'),
                            );
                          }),
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}

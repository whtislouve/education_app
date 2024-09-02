import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyCoursePage extends StatefulWidget {
  const MyCoursePage({super.key});

  @override
  State<MyCoursePage> createState() => _MyCoursePageState();
}

class _MyCoursePageState extends State<MyCoursePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyCoursePage'),
      ),
      body: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}

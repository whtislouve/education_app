import 'package:flutter/material.dart';

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
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('WishlistPage'),
      ),
      body: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}

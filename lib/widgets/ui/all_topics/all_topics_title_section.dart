import 'package:flutter/material.dart';

class AllTopicsTitleSection extends StatelessWidget {
  const AllTopicsTitleSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 30),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: const Text(
                'All Topic',
              ),
            ),
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Done"))
        ],
      ),
    );
  }
}

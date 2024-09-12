import 'package:flutter/material.dart';

class AllTopicsTitleSection extends StatelessWidget {
  const AllTopicsTitleSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 150, right: 20, top: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Text(
                'All Topic',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 18),
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
                    fontSize: 16, color: Theme.of(context).colorScheme.primary),
              ))
        ],
      ),
    );
  }
}

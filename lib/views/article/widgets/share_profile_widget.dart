import 'package:flutter/material.dart';

class ShareProfileWidget extends StatelessWidget {
  const ShareProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.near_me_outlined,
          size: 24,
          color: Theme.of(context).colorScheme.primary,
        ),
        SizedBox(width: 24),
        Icon(
          Icons.bookmark_outline,
          size: 24,
          color: Theme.of(context).colorScheme.primary,
        ),
      ],
    );
  }
}

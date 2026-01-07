import 'package:flutter/material.dart';

class DotsWidget extends StatelessWidget {
  const DotsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 3; i++)
          Expanded(
            child: Padding(
              padding: .symmetric(horizontal: 6),
              child: Divider(
                thickness: 4,
                radius: BorderRadius.circular(10),
                height: 4,
                color: Colors.white.withValues(alpha: i == 0 ? 1 : 0.5),
              ),
            ),
          ),
      ],
    );
  }
}

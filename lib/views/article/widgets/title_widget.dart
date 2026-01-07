import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Four Things Every Woman Needs To Know",
      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
    );
  }
}

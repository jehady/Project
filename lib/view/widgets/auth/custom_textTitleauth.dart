import 'package:flutter/material.dart';

class CustomTextTitleAuth extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  const CustomTextTitleAuth(
      {super.key, required this.title, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: textStyle,
      ),
    );
  }
}

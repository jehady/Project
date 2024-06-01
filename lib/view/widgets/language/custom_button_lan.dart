import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';


class CustomButtonLan extends StatelessWidget {
  final String textButton;
  final void Function() onPressed;
  const CustomButtonLan(
      {super.key, required this.textButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Container(
        width: double.infinity,
        child: MaterialButton(
          color: AppColor.primarycolor,
          onPressed: onPressed,
          child: Text(
            textButton,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

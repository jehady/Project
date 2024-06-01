import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  // final Color color = AppColor.primarycolor;
  // Color textColor = Colors.white;
  const CustomButtonAuth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      //padding: EdgeInsets.symmetric(horizontal: 1),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 17),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: onPressed,
        color: AppColor.primarycolor,
        textColor: Colors.white,
        child: Text(text),
        // textColor: textColor,
      ),
    );
  }
}

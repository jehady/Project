import 'package:flutter/material.dart';

void aleartExitApp(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("هل تريد الخروج من التطبيق؟"),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .pop(true); // اغلاق الـ dialog وارجاع قيمة true
          },
          child: const Text("نعم"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .pop(false); // اغلاق الـ dialog وارجاع قيمة false
          },
          child: const Text("لا"),
        ),
      ],
    ),
  );
}

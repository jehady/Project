import 'package:e232/view/screens/videoPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class singelvideoinplaylist extends StatelessWidget {
  const singelvideoinplaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Get.to(VideoPlayer());
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Introductios",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width * 0.35,
                child: Image.asset("assets/images/background.jpeg")),
          ],
        ),
      ),
    );
  }
}

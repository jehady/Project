import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.13,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Q tEXT

                Text(
                  "what is the number of var in x=y+z",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(27)),
                  child: TextButton(
                      onPressed: () {},
                      child: Text("1", style: TextStyle(color: Colors.black))),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(27)),
                  child: TextButton(
                      onPressed: () {},
                      child: Text("3", style: TextStyle(color: Colors.black))),
                ),
              ],
              // 2 TextButton
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(27)),
                  child: TextButton(
                      onPressed: () {},
                      child: Text("3", style: TextStyle(color: Colors.black))),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(27)),
                  child: TextButton(
                      onPressed: () {},
                      child: Text("4", style: TextStyle(color: Colors.black))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

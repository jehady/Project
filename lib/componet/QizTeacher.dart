import 'package:flutter/material.dart';
import 'package:e232/componet/QuizQuestion.dart';

class QuizPaget extends StatefulWidget {
  const QuizPaget({super.key});

  @override
  State<QuizPaget> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPaget> {
  List<Widget> questions = [const QTeacher()];

  void addQuestion() {
    setState(() {
      questions.add(const QTeacher());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Enter Your Question and Answers. The right answer must be the first one.",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              Expanded(
                child: ListView(
                  children: questions,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Finish Quiz',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: IconButton(
                      onPressed: addQuestion,
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

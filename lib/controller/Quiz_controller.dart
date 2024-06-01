import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class QuizzController extends GetxController {
  onnTap(bool isTrue); // Modified to accept answer
}

class QuizzControllerImp extends QuizzController {
  List<Icon> iconList = []; // Initialize empty
  List<String> myQuistions = [
    'abstract class QuizzController extends GetxController',
    ' // Modified to accept answer',
    'import package:flutter/material.dart',
    'abstract class QuizzController extends GetxController',
    'import package:flutter/material.dart',
  ];
  int indexForQuistion = 0;
  List<String> answerKey = ['eeee', 'yyyy', 'aaaa', 'nnnn','kkkk']; // Answer key
  List<String> theAnsers = [
    'hussam',
    'hala',
    'fatima',
    'ali',
    'batoul',
    'leen',
  ];
  List<String> firstButton = [
    'qqqq',
    'wwww',
    'eeee',
    'rrrr',
    'tttt',
  ];
  List<String> secondButton = [
    'yyyy',
    'uuuu',
    'iiii',
    'oooo',
  ];
  List<String> thirdButton = [
    'aaaa',
    'ssss',
    'dddd',
    'ffff',
  ];
  List<String> forthButton = [
    'mmmm',
    'nnnn',
    'bbbb',
    'vvvv',
  ];

  List<bool> userAnswers = []; // Store user answers

  @override
  onnTap(bool isTrue) {
    userAnswers.add(isTrue);

    if (indexForQuistion < answerKey.length &&
        indexForQuistion < myQuistions.length) {
      if (isTrue == answerKey[indexForQuistion]) {
        iconList.add(const Icon(Icons.check, color: Colors.green));
      } else {
        iconList.add(const Icon(Icons.close, color: Colors.red));
      }
      indexForQuistion++;

      update();
    }
  }
}

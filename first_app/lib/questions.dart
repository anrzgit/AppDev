import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class Question extends StatelessWidget {
  var questionText;
  Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

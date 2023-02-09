import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  String answerText;
  Answer(this.selectHandler, this.answerText, {super.key});
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      child: Text(answerText),
      onPressed: selectHandler,
    ));
  }
}

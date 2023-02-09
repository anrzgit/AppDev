import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

void main() {
  runApp(MyApp());
}

var quesIndex = 0;

// shift alter f------->format document
// ctrl shift r ------->refactor
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': "what is your favoirate color",
      'answers': ['black ', 'red', 'green', 'white'],
    },
    {
      'questionText': "what is your favoirate animal",
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': "what is your favoirate company",
      'answers': ['git', 'apple', 'microsoft', 'idk']
    },
  ];

  void answerQuestion() {
    if (quesIndex <= questions.length) {
      print(const Text("we have more ques"));
    }

    setState(() {
      quesIndex += 1;
    });

    print(quesIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First App"),
        ),
        body: quesIndex < questions.length
            ? (Column(
                children: [
                  Container(
                    color: Colors.blueGrey,
                    child: Question(
                      questions[quesIndex]['questionText'],
                    ),
                  ),
                  ...(questions[quesIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answerQuestion, answer);
                  }).toList()
                ],
              ))
            : const Center(
                child: Text(
                "khatam!!! ",
              )),
      ),
    );
  }
}

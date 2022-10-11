import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  var questionIndex = 0;
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });

    print('answer');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first app'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('answer 2'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}

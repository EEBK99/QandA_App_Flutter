// every widget has a build method
// if child define method of parent which is already defined in parent then it is called as override
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  // using MyApp() contructor in runApp()
  runApp(MyApp());
}

//Widget Type
//visible and invisible widgets
//visible (input & output)
//invisible (layout & control)

// visible widgets: buttons, listbox, checkbox...
// invisible widgets: columns, rows, listview...
// widget: container

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

//class MyAppState extends StatelessWidget
class _MyAppState extends State {
  final _questions = const [
    {
      'question': 'what\'s is your favorite Sports?',
      'answers': [
        {'text': 'Cricket', 'score': 1},
        {'text': 'Football', 'score': 2},
        {'text': 'Hockey', 'score': 3},
        {'text': 'Basketball', 'score': 4},
      ]
    },
    {
      'question': 'what\'s is your favorite Animal?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Goat', 'score': 1},
        {'text': 'Horse', 'score': 1},
        {'text': 'Dog', 'score': 1},
      ]
    },
    {
      'question': 'what\'s is your favorite Mobile?',
      'answers': [
        {'text': 'Iphone 7', 'score': 1},
        {'text': 'Huawei Y7', 'score': 3},
        {'text': 'Redme Note 8', 'score': 2},
        {'text': 'Samsung A20', 'score': 3},
      ]
    },
    {
      'question': 'what\'s is your favorite Color?',
      'answers': [
        {'text': 'Blue', 'score': 3},
        {'text': 'Black', 'score': 2},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 1}
      ]
    },
  ];
  var _totalScore = 0;
  var _questionIndex = 0;
  void _ansQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("favorite");
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestions: _ansQuestions,
                qIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
        //Text('this is the second part of the app'),
      ),
    );
  }
}

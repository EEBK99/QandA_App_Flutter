import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resetHandler;
  Result(this.result, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You have Completed Your qUIZ';
    if (result <= 8) {
      resultText = 'You Are Awsome';
    } else if (result <= 12) {
      resultText = 'Pretty likeable';
    } else if (result <= 16) {
      resultText = 'You Are strange?';
    } else {
      resultText = 'You Are so Bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}

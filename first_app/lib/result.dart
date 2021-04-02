import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartHandler;

  Result(this.resultScore, this.restartHandler);

  String get resultPhrase {
    String finalText =
        "Your score is : " + resultScore.toString() + " out of 16";
    return finalText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(resultPhrase,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 36,
          ),
          textAlign: TextAlign.center),
      FlatButton(
        child: Text("Restart Quiz"),
        onPressed: restartHandler,
        textColor: Colors.red,
      )
    ]));
  }
}

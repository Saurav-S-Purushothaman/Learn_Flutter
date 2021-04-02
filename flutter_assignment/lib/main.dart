// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _Quotes = const [
    "Deomocracy and Socialism are means to an end not the end istself",
    "If our blood is gonna flow, then it will flow all over the world"
  ];

  var _quoteIndex = 0;

  void nextPressed() {
    setState(() {
      _quoteIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:
            AppBar(title: Text("Nehru Quotes"), backgroundColor: Colors.orange),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.only(bottom: 20),
            child: Text(_Quotes[_quoteIndex],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                )),
          ),
          ElevatedButton(
            child: Text("Next Pressed"),
            onPressed: nextPressed,
            style: ElevatedButton.styleFrom(primary: Colors.orange),
          )
        ]),
      ),
    );
  }
}

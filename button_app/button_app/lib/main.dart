import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              shadowColor: Colors.black,
              title: Text("Old & New Buttons"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.black,
                  child: Text("A Raised Button"),
                  onPressed: () {
                    print("pressed raised button");
                  },
                ),
                FlatButton(
                  child: Text("A flatButton"),
                  color: Colors.green,
                  textColor: Colors.black,
                  onPressed: () {
                    print("pressed a flatbutton");
                  },
                ),
                OutlineButton(
                    child: Text("an OutlineButton"),
                    borderSide: BorderSide(color: Colors.green),
                    onPressed: () {
                      print("Pressed an outlineButton");
                    }),
                ElevatedButton(
                  child: Text("An ElavatedButton"),onPressed:null
                )
              ],
            )));
  }
}

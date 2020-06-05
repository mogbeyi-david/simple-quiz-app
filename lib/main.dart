import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void showMessageAsToast(String message, bool isCorrect) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: !isCorrect ? Colors.red : Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple,
          buttonColor: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Quiz Game'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Card(
                child: Text("What is the first book in the bible?"),
              ),
              padding: EdgeInsets.all(10.0),
            ),
            RaisedButton(
              textColor: Colors.white,
              child: Text('A. Genesis'),
              onPressed: () => showMessageAsToast("Correct Answer!!", true),
            ),
            RaisedButton(
              textColor: Colors.white,
              child: Text('B. Exodus'),
              onPressed: () => showMessageAsToast("Wrong Answer!!", false)),
            RaisedButton(
              textColor: Colors.white,
              child: Text('C. Leviticus'),
              onPressed: () => showMessageAsToast("Wrong Answer!!", false)
            ),
            RaisedButton(
              textColor: Colors.white,
              child: Text('D. Numbers'),
              onPressed: () => showMessageAsToast("Wrong Answer!!", false)
            ),
          ],
        ),
      ),
    );
  }
}

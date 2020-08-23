import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DemoState();
  }
}

class DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: RaisedButton(
              color: Colors.blue,
              child: Text(
                'SNACKBAR',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Hello!'),
                  backgroundColor: Colors.blue,
                ));
              },
            ),
          );
        },
      ),
    );
  }
}

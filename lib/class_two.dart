import 'package:flutter/material.dart';

class ClassTwo extends StatefulWidget {
  ClassTwo({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ClassTwoState createState() => _ClassTwoState();
}

class _ClassTwoState extends State<ClassTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class Two"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
                width: 300.0,
              ),
              Image.network(
                'https://github.com/mitulgautam/AEOLogicChallenge/blob/master/images/citizen.jpg?raw=true',
                fit: BoxFit.fitHeight,
                height: 200.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Using Rows and Column",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Welcome",
                      style: TextStyle(fontSize: 36.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "To",
                      style: TextStyle(fontSize: 36.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Flutter",
                      style: TextStyle(fontSize: 36.0),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

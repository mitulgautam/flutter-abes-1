import 'package:flutter/material.dart';
import 'package:flutter_batch_1/class_one.dart';
import 'package:flutter_batch_1/class_two.dart';
import 'class_three.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Batch 1 - Code Infinity',
        theme: ThemeData(primarySwatch: Colors.pink),
        home: App(),
      ),
    );

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Batch I - ABES"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: <Widget>[
            _card(
                'Class 1',
                'Material App, Scaffold, Floating Action Button, Button: onPressed, Calculator',
                Colors.pink,
                () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ClassOne()))),
            _card(
                'Class 2',
                'Rows, Columns, Images(Network, Assets), Stack',
                Colors.orange,
                () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ClassTwo()))),
            _card(
                'Class 3',
                'List View, List View.builder',
                Colors.blue,
                () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ClassThree()))),
          ],
        ),
      )),
    );
  }

  Widget _card(
      String text, String subContent, Color color, VoidCallback callback) {
    return InkWell(
      onTap: callback,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: color,
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 128.0,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white30,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white12,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 128.0,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          text,
                          style: TextStyle(color: Colors.white, fontSize: 32.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            subContent,
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

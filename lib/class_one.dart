import 'package:flutter/material.dart';

class ClassOne extends StatefulWidget {
  @override
  _ClassOneState createState() => _ClassOneState();
}

class _ClassOneState extends State<ClassOne> {
  int i = 0;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class One"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller1,
                  decoration: InputDecoration(hintText: 'Enter input a'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller2,
                  decoration: InputDecoration(hintText: 'Enter input b'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  i.toString(),
                  style: TextStyle(
                      fontSize: 128.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          int a = int.parse(controller1.text);
          int b = int.parse(controller2.text);
          setState(() {
            i = a + b;
          });
        },
      ),
    );
  }
}

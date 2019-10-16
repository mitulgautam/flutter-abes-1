import 'package:flutter/material.dart';
import 'package:flutter_batch_1/main.dart';

class ClassThree extends StatefulWidget {
  @override
  _ClassThreeState createState() => _ClassThreeState();
}

class _ClassThreeState extends State<ClassThree> {
  @override
  Widget build(BuildContext context) {
    var str = [
      "Vaibhav Raj",
      "Kritika",
      "Sandeep",
      "Apurv",
      "Anmol",
      "Anmol Gupta",
      "Bhartendu",
      "Rajveer",
      "Tripti",
      "Mohit",
      "Prashant",
      "Mayank",
      "Prashant"
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Class 3"),),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 16.0, right: 8.0, bottom: 32.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    str[index].substring(0, 1),
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    str[index].substring(0, 1),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 32.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    str[index],
                    style: TextStyle(fontSize: 24.0),
                  ),
                )
              ],
            ),
          );
        },
        itemCount: str.length,
      ),
    );
  }
}

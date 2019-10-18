import 'package:flutter/material.dart';

class ClassFour extends StatefulWidget {
  @override
  _ClassFourState createState() => _ClassFourState();
}

class _ClassFourState extends State<ClassFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
//              child: Image.asset('assets/images/logo.png',width: 200,height: 200,),
              color: Colors.blue,
            ),

                FlatButton(
                  child: Text('Welcome to flutter'),
                  onPressed: (){},
                  color: Colors.red,
                ),

          ],
        ),
      ),
    );
  }
}

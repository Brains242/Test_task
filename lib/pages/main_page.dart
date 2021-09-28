import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color randomColor = Colors.lightBlueAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        brightness: Brightness.dark,
        backgroundColor: randomColor,
        title: Text(
          'Test task',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Exo2',
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                offset: Offset(3.5, 2.5),
                blurRadius: 8.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Ink(
            child: InkWell(
          child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: randomColor,
              child: Align(
                  alignment: Alignment.center,
                  child: Text('Hey there',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Exo2',
                        fontSize: 32,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(3.5, 2.5),
                            blurRadius: 8.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      )))),
          onTap: () {
            setState(() {
              randomColor =
                  Colors.primaries[Random().nextInt(Colors.primaries.length)];
            });
          },
        )),
      ),
    );
  }
}

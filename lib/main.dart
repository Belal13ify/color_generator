import 'package:flutter/material.dart';
import 'dart:math' show Random;

void main() {
  runApp(MyApp());
}

// int returnedColor;
// int color = returnedColor;
var random = new Random();
// randomize() {
//   returnedColor = (random.nextDouble() * 0xFFFFFF).toInt();
// }
int color = 0xffabcdef;
int generateColor() {
  color = (random.nextDouble() * 0xFFFFFF).toInt();
  return color;
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Color Generator"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: 170,
                height: 170,
                color: Color(color).withOpacity(1.0),
              ),
              SizedBox(height: 10),
              Text(color.toRadixString(16).toUpperCase(),
                  style: TextStyle(fontSize: 18, color: Color(0xff000000)),
                  textAlign: TextAlign.center),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      generateColor();
                    });
                  },
                  child: Text(
                    "Generate Color",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

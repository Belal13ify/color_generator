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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: 170,
                height: 170,
                color: Color((random.nextDouble() * 0xFFFFFF).toInt())
                    .withOpacity(1.0),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
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

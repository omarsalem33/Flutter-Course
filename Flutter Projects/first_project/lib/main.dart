import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My Profile"), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, size: 100),
              SizedBox(height: 20),
              Text(
                "Omar Salem",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text("Flutter Developer"),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.phone),
                SizedBox(width: 10),
                Icon(Icons.email),
                SizedBox(width: 10),
                Icon(Icons.favorite),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

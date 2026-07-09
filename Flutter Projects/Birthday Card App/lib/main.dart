import 'package:flutter/material.dart';

void main() {
  runApp(BirthdayCardApp());
}

class BirthdayCardApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        backgroundColor: Color(0xFFD2BCD5),
        body : Center(child: Image(image: AssetImage('images/birthday_card.jpg'),))
      ),
    );
  }
  
}

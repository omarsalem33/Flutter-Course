import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 152,
              backgroundColor: const Color.fromARGB(255, 240, 238, 219),
              child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('images/432.jpg'),
              ),
            ),
            Text(
              'Omar Salem',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Pacifico',
              ),
            ),

            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                color: Color(0xFF6C8090),
                fontSize: 16,
                fontFamily: 'Source Sans Pro',
                letterSpacing: 2.5,
              ),
            ),
            Divider(
              color: Color(0xFF6C8090),
              thickness: 2,
              indent: 50,
              endIndent: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 65,
                child: Row(
                  children: [
                    Spacer(flex: 1),
                    Icon(Icons.phone, color: Color(0xFF2B475E)),
                    Spacer(flex: 2),
                    Text(
                      ' (+20) 123 456 7890',
                      style: TextStyle(color: Color(0xFF2B475E), fontSize: 20),
                    ),
                    Spacer(flex: 4),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 65,
                child: Row(
                  children: [
                    Spacer(flex: 1),
                    Icon(Icons.email, color: Color(0xFF2B475E)),
                    Spacer(flex: 1),
                    Text(
                      ' omarsalemabdelrouf@gmail.com',
                      style: TextStyle(color: Color(0xFF2B475E), fontSize: 20),
                    ),
                    Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:toku/components/categoryItem.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFeF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text("Toku", style: TextStyle(color: Colors.white)),
      ),

      body: Column(
        children: [
          Category("Numbers", Color(0xffEF9235)),
          Category("Family Members", Color.fromARGB(255, 35, 128, 9)),
          Category("Colors", Color.fromARGB(255, 68, 4, 97)),
          Category("Pharses", Color.fromARGB(255, 10, 180, 214)),
        ],
      ),
    );
  }
}

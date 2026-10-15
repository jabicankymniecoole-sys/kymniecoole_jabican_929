import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Hello World", style: TextStyle(color: Colors.red)),
          SizedBox(height: 50),
          Text("World Hello", style: TextStyle(color: Colors.blue)),
          Row(
            children: [
              Text("Hello Yuri", style: TextStyle(color: Colors.pink)),
              SizedBox(width: 50),
              Text("Hi Hello", style: TextStyle(color: Colors.green)),
            ],
          ),

          Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            child: Center(child: Text("Hello Hooman")),
          ),
        ],
      ),
    );
  }
}

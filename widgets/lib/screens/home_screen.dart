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
          Text("Hello World", style: TextStyle(color: Colors.deepPurpleAccent),),

          Row(children: [
            Text("Mtcl 3",style: TextStyle(color: Colors.lightBlueAccent),),
            Text("Mtcl 7", style: TextStyle(color: Colors.red),),
          ],),
          Container(
            height: 250,
            width: 250,
            color: Colors.pinkAccent,
            child: Center(child: Text("Hello World")),
          ),
        ],
      ),
    );
  }
}

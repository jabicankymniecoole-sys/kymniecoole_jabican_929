import 'package:flutter/material.dart';


class PrelimScreen extends StatefulWidget {
  const PrelimScreen({super.key});

  @override
  State<PrelimScreen> createState() => _PrelimScreenState();
}

class _PrelimScreenState extends State<PrelimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: Text(
              "Prelim Exam",
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 20),

          Center(
            child: Text(
              "Kym Niecoole R. Jabican",
              style: TextStyle(fontSize: 20),
            ),
          ),

          SizedBox(height: 20),

          Center(
            child: Container(
              height: 258,
              width: 258,
              color: Colors.lightBlue,
              child: Center(
                child: Text("Box 1", style: TextStyle(fontSize: 20)),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 258,
                width: 258,
                color: Colors.lightBlue,
                child: Center(
                  child: Text("Box 2", style: TextStyle(fontSize: 20)),
                ),
              ),

              SizedBox(height: 20),

              Container(
                height: 258,
                width: 258,
                color: Colors.lightBlue,
                child: Center(
                  child: Text("Box 3", style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

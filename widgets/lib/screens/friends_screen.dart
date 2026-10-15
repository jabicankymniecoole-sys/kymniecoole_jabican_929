import 'package:flutter/material.dart';
import 'package:widgets/components/globalappbar_component1.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent1(),

      body: Center(child: Text("friends Screen")),
    );
  }
}

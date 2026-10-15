import 'package:flutter/material.dart';

class GlobalappbarComponent1 extends StatelessWidget
    implements PreferredSizeWidget {
  const GlobalappbarComponent1({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Text("CPU Social"),
      actions: [Icon(Icons.person)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

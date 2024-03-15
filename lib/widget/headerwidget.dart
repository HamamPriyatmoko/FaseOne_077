import 'package:flutter/material.dart';

class header extends StatelessWidget {
  const header({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 25),
        Text("Data Form"),
        SizedBox(
          height: 25,
        ),
        CircleAvatar(
          radius: 70,
        )
      ],
    );
  }
}
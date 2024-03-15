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
          backgroundImage: NetworkImage(
              "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/restaurant-logo-design-%281%29-template-b9bd726f6bee3380567f1c9b63a8c99b_screen.jpg?ts=1658842438"),
          radius: 70,
        )
      ],
    );
  }
}

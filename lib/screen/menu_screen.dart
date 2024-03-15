import 'package:flutter/material.dart';
import 'package:pertemuan3ucp1/widget/form_menu.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Menu"),
      ),
      body: const SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              FormMenu()
            ],
          ),
        ),
      )),
    );
  }
}

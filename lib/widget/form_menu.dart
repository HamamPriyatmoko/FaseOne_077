import 'package:flutter/material.dart';

class FormMenu extends StatefulWidget {
  const FormMenu({super.key});

  
  @override
  State<FormMenu> createState() => _FormMenuState();
}

class _FormMenuState extends State<FormMenu> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              labelText: "Makanan",
            ),
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              labelText: "Minuman",
            ),
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              labelText: "Dessert",
            ),
          ),
        ),
      ],
    ));
  }
}

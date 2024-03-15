import 'package:flutter/material.dart';

class FormMenu extends StatefulWidget {
  const FormMenu({super.key, required this.formkey, required this.etMakanan, required this.etMinuman, required this.etDessert});

  final GlobalKey<FormState> formkey;
  final TextEditingController etMakanan;
  final TextEditingController etMinuman;
  final TextEditingController etDessert;
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
            controller: widget.etMakanan,
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
            controller: widget.etMinuman,
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
            controller: widget.etDessert,
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

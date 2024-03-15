import 'package:flutter/material.dart';

class FormMenu extends StatefulWidget {
  const FormMenu({super.key, required this.formkey, required this.etMakanan, required this.etMinuman});

  final GlobalKey<FormState> formkey;
  final TextEditingController etMakanan;
  final TextEditingController etMinuman;
  
  @override
  State<FormMenu> createState() => _FormMenuState();
}

class _FormMenuState extends State<FormMenu> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formkey,
      child: Column(
        children: [
          const SizedBox(height: 25),
          TextFormField(
            keyboardType: TextInputType.name,
            controller: widget.etMakanan,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              labelText: "Makanan",
            ),
          ),
        ],
      )
    );
  }
}
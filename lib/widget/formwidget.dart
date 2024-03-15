import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget(
      {super.key,
      required this.etNama,
      required this.etNotelp,
      required this.etAlamat,
      required this.formkey});

  final GlobalKey<FormState> formkey;
  final TextEditingController etNama;
  final TextEditingController etNotelp;
  final TextEditingController etAlamat;

  @override
  State<FormWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FormWidget> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formkey,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 25),
          TextFormField(
            keyboardType: TextInputType.name,
            controller: widget.etNama,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              labelText: "Nama",
              hintText: "Masukkan Nama Anda",
              prefixIcon: Icon(Icons.person_outline),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Tidak Boleh Kosong';
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            controller: widget.etNotelp,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              labelText: "No Telepon",
              hintText: "Massukkan No Telepon",
              prefixIcon: Icon(Icons.telegram),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Tidak Boleh Kosong';
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            keyboardType: TextInputType.streetAddress,
            controller: widget.etAlamat,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              labelText: "Alamat Lengkap",
              hintText: "Masukkan Alamat",
              prefixIcon: Icon(Icons.email),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Tidak Boleh Kosong';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Column(
                children: [
                  Text("Jenis Kelamin"),
                ],
              ),
              Radio<int>(
                value: 1,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              Text('P'),
              SizedBox(width: 20),
              Radio<int>(
                value: 2,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              Text('L'),
            ],
          ),
        ],
      ),
    );
  }
}

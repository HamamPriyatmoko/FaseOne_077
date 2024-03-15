import 'package:flutter/material.dart';
import 'package:pertemuan3ucp1/widget/form_menu.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    super.key,
    required this.nama,
    required this.notelp,
  });

  final String nama;
  final String notelp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Menu"),
      ),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Nama : $nama"),
              Text("No Telepon : $notelp"),
              FormMenu(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

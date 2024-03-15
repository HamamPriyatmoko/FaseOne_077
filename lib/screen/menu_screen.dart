import 'package:flutter/material.dart';
import 'package:pertemuan3ucp1/screen/detail_screen.dart';
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
    var makanan = TextEditingController();
    var minuman = TextEditingController();
    var desert = TextEditingController();
    var formKey = GlobalKey<FormState>();
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
              FormMenu(
                  formkey: formKey,
                  etMakanan: makanan,
                  etMinuman: minuman,
                  etDessert: desert),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          makanan: makanan.text,
                          minuman: minuman.text,
                          desert: desert.text,
                          nama: nama,
                          nohp: notelp,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}

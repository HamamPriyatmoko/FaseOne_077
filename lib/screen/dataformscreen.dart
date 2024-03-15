import 'package:flutter/material.dart';
import 'package:pertemuan3ucp1/screen/menu_screen.dart';
import 'package:pertemuan3ucp1/widget/footerwidget.dart';
import 'package:pertemuan3ucp1/widget/formwidget.dart';
import 'package:pertemuan3ucp1/widget/headerwidget.dart';

class DataFormScreen extends StatelessWidget {
  const DataFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var notelp = TextEditingController();
    var alamat = TextEditingController();
    var formkey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const header(),
                FormWidget(
                  etNama: nama,
                  etNotelp: notelp,
                  etAlamat: alamat,
                  formkey: formkey,
                ),
                FooterWidget(
                  onPressedSubmit: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => MenuScreen()),
                          (route) => false);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Data Telah Masuk"),
                      ));
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

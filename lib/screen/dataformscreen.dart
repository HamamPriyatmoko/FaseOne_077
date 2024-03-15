import 'package:flutter/material.dart';
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
                FooterWidget(onPressedSubmit: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ppkd_d_3/extention/navigation.dart';
import 'package:ppkd_d_3/tugas_10/textform.dart';
import 'package:ppkd_d_3/tugas_10/tugas_10b.dart';

class TugasSepuluhA extends StatefulWidget {
  const TugasSepuluhA({super.key});

  @override
  State<TugasSepuluhA> createState() => _TugasSepuluhAState();
}

class _TugasSepuluhAState extends State<TugasSepuluhA> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Text('Nama'),
              TextFormConst(
                hintText: "Masukan Nama",
                controller: nameController,
                onChanged: (p0) {
                  setState(() {});
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Nama wajib diisi' : null,
              ),
              Text('Email'),
              TextFormConst(
                hintText: "Masukan Email",
                controller: emailController,
                onChanged: (p0) {
                  setState(() {});
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email Tidak Boleh Kosong";
                  }
                  if (!value.contains("@")) {
                    return "Format email tidak valid";
                  }
                  return null;
                },
              ),
              Text('Phone'),
              TextFormConst(
                hintText: "Masukan Phone",
                controller: phoneController,
                onChanged: (p0) {
                  setState(() {});
                },
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return null;
                  }
                  if (value.length < 10) {
                    return 'Phone harus lebih dari 10';
                  }
                  return null; // Valid
                },
              ),
              Text('Kota'),
              TextFormConst(
                hintText: "Masukan Kota Domisili",
                controller: addressController,
                onChanged: (p0) {
                  setState(() {});
                },
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Kota wajib diisi' : null,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Gagal"),
                          content: Text("Harap isi semua data dengan benar."),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("OK"),
                            ),
                          ],
                        ),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Berhasil"),
                          content: Text("pendaftaran berhasil."),
                          actions: [
                            TextButton(
                              onPressed: () {
                                context.push(
                                  TugasSepuluhB(
                                    email: emailController.text,
                                    name: nameController.text,
                                    address: addressController.text,
                                  ),
                                );
                              },
                              child: Text("Lanjut"),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: Text("daftar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

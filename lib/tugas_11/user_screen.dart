import 'package:flutter/material.dart';
import 'package:ppkd_d_3/tugas_10/textform.dart';
import 'package:ppkd_d_3/tugas_11/db_helper.dart';
import 'package:ppkd_d_3/tugas_11/user.dart';

class TugasSebelas extends StatefulWidget {
  const TugasSebelas({super.key});

  @override
  State<TugasSebelas> createState() => _TugasSebelasState();
}

class _TugasSebelasState extends State<TugasSebelas> {
  List<Penghuni> penghuni = [];
  @override
  void initState() {
    super.initState();
    getUser();
  }

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController roomController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  Future<void> getUser() async {
    final dataPenghuni = await DbHelper.getAllPenghuni();
    print(dataPenghuni);
    setState(() {
      penghuni = dataPenghuni;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormConst(
              hintText: "Nama",
              controller: nameController,
              keyboardType: TextInputType.name,
            ),
            TextFormConst(
              hintText: "Phone",
              controller: phoneController,
              keyboardType: TextInputType.phone,
            ),
            TextFormConst(
              hintText: "No Kamar",
              controller: roomController,
              keyboardType: TextInputType.number,
            ),
            TextFormConst(
              hintText: "Asal Kota",
              controller: cityController,
              keyboardType: TextInputType.name,
            ),
            ElevatedButton(
              onPressed: () async {
                final name = nameController.text.trim();
                final phone = phoneController.text.trim();
                final room = roomController.text.trim();
                final city = cityController.text.trim();
                if (name.isEmpty ||
                    phone.isEmpty ||
                    room.isEmpty ||
                    city.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Nama. Phone, No Kamar, Asal Kota tidak boleh kosong",
                      ),
                    ),
                  );

                  return;
                }
                final penghuni = Penghuni(
                  name: name,
                  phone: phone,
                  room: room,
                  city: city,
                );
                await DbHelper.registerPenghuni(penghuni);
                Future.delayed(const Duration(seconds: 1)).then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Pendataan berhasil")),
                  );
                });
                getUser();
                setState(() {});
              },

              child: Text("Simpan Data"),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: penghuni.length,
              itemBuilder: (BuildContext context, int index) {
                final dataUserLogin = penghuni[index];
                return ListTile(
                  title: Text(dataUserLogin.name),
                  subtitle: Text(dataUserLogin.phone),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

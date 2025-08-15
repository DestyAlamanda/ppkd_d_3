import 'package:flutter/material.dart';
import 'package:ppkd_d_3/tugas_10/textform.dart';
import 'package:ppkd_d_3/tugas_11/database/db_helper.dart';
import 'package:ppkd_d_3/tugas_11/model/user.dart';

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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            children: [
              // Text(
              //   "Formulir",
              //   style: TextStyle(
              //     fontSize: 25,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.black,
              //   ),
              // ),
              SizedBox(height: 12),
              TextFormConst(
                hintText: "Nama",
                controller: nameController,
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 12),
              TextFormConst(
                hintText: "Phone",
                controller: phoneController,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 12),
              TextFormConst(
                hintText: "No Kamar",
                controller: roomController,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 12),
              TextFormConst(
                hintText: "Asal Kota",
                controller: cityController,
                keyboardType: TextInputType.streetAddress,
              ),
              SizedBox(height: 12),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff21BDCA),
                  fixedSize: Size(360, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
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
                          "Nama, Phone, No Kamar, Asal Kota tidak boleh kosong",
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

                child: Text(
                  "Simpan Data",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: penghuni.length,
                itemBuilder: (BuildContext context, int index) {
                  final dataPenghuniLogin = penghuni[index];
                  // return ListTile(
                  //   title: Text(dataUserLogin.name),
                  //   subtitle: Text(dataUserLogin.phone,),

                  // );
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 6),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withValues(alpha: 0.2),
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Color(0xff21BDCA),
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            // spacing: 12,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nama : ${dataPenghuniLogin.name}"),
                              Text("Phone : ${dataPenghuniLogin.phone}"),
                              Text("No Kamar : ${dataPenghuniLogin.room}"),
                              Text("Asal Kota : ${dataPenghuniLogin.city}"),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                nameController.text = dataPenghuniLogin.name;
                                phoneController.text = dataPenghuniLogin.phone;
                                roomController.text = dataPenghuniLogin.room;
                                cityController.text = dataPenghuniLogin.city;
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: Text(
                                      'Edit Data',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextFormConst(
                                          controller: nameController
                                            ..text = dataPenghuniLogin.name,
                                          hintText: 'Nama',
                                          keyboardType: TextInputType.name,
                                        ),
                                        SizedBox(height: 12),
                                        TextFormConst(
                                          controller: phoneController
                                            ..text = dataPenghuniLogin.phone,
                                          hintText: 'Phone',
                                          keyboardType: TextInputType.phone,
                                        ),
                                        SizedBox(height: 12),

                                        TextFormConst(
                                          controller: roomController
                                            ..text = dataPenghuniLogin.room,
                                          hintText: 'Room',
                                          keyboardType: TextInputType.number,
                                        ),
                                        SizedBox(height: 12),
                                        TextFormConst(
                                          controller: cityController
                                            ..text = dataPenghuniLogin.city,
                                          hintText: 'Asal Kota',
                                          keyboardType:
                                              TextInputType.streetAddress,
                                        ),
                                      ],
                                    ),
                                    actions: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff21BDCA),
                                          fixedSize: Size(360, 30),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              6,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          final dataUser = Penghuni(
                                            id: dataPenghuniLogin.id!,
                                            name: nameController.text,
                                            phone: phoneController.text,
                                            room: roomController.text,
                                            city: cityController.text.trim(),
                                          );
                                          DbHelper.updatePenghuni(dataUser);
                                          getUser();
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'Simpan',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff21BDCA),
                                          fixedSize: Size(360, 30),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              6,
                                            ),
                                          ),
                                        ),
                                        onPressed: () => Navigator.pop(context),
                                        child: Text(
                                          'Batal',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              icon: Icon(Icons.edit),
                            ),
                            IconButton(
                              onPressed: () {
                                DbHelper.deletePenghuni(dataPenghuniLogin.id!);

                                getUser();
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

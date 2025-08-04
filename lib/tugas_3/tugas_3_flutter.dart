import 'package:flutter/material.dart';

class TugasTiga extends StatelessWidget {
  const TugasTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text("Formulir", 
        style: TextStyle(color: Colors.grey[100], fontWeight: FontWeight.bold )),
        backgroundColor: Colors.pink[200],
        centerTitle: true
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration( 
                      prefixIcon: Icon(
                        Icons.person
                      ),
                      labelText: 'Nama Lengkap', 
                      border: OutlineInputBorder()),
                      keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: 20),
                      TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email
                      ),
                      labelText: 'Email',
                      border: OutlineInputBorder()),
                      keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20),
                      TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone
                      ),
                      labelText: 'No Hp',
                      border: OutlineInputBorder()),
                      keyboardType: TextInputType.phone,
                      ),
                      SizedBox(height: 20),
                      TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.notes
                      ),
                      labelText: 'Deskripsi',
                      border: OutlineInputBorder()),
                      maxLines: 3,
                      ),
                    SizedBox(height: 15),
                    Text("Galeri",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(color: Colors.pink[100], borderRadius: BorderRadius.circular(20)),
                            ),
                            Center(child: 
                            Text("Gambar 1", 
                            style: TextStyle(color: Colors.white, fontSize: 20),))
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(color: Colors.pink[200], borderRadius: BorderRadius.circular(20)),
                            ),
                            Center(child: 
                            Text("Gambar 2", 
                            style: TextStyle(color: Colors.white, fontSize: 20),))
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(color: Colors.pink[200], borderRadius: BorderRadius.circular(20)),
                            ),
                            Center(child: 
                            Text("Gambar 3", 
                            style: TextStyle(color: Colors.white, fontSize: 20),))
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(color: Colors.pink[100], borderRadius: BorderRadius.circular(20)),
                            ),
                            Center(child: 
                            Text("Gambar 4", 
                            style: TextStyle(color: Colors.white, fontSize: 20),))
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(color: Colors.pink[100], borderRadius: BorderRadius.circular(20)),
                            ),
                            Center(child: 
                            Text("Gambar 5", 
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            )
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(color: Colors.pink[200], borderRadius: BorderRadius.circular(20)),
                            ),
                            Center(child: 
                            Text("Gambar 6", 
                            style: TextStyle(color: Colors.white, fontSize: 20),))
                          ],
                        ),
                    ]
                  )
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}
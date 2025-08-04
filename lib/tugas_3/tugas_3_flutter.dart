import 'package:flutter/material.dart';

class TugasTiga extends StatelessWidget {
  const TugasTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text("Formulir", 
        style: TextStyle(color: Colors.grey[100])),
        backgroundColor: Colors.pink[200],
        centerTitle: true
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 50, vertical: 10)),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nama Lengkap',
                      border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 20),
                      TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 20),
                      TextField(
                    decoration: InputDecoration(
                      labelText: 'No Hp',
                      border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 20),
                      TextField(
                    decoration: InputDecoration(
                      labelText: 'Deskripsi',
                      border: OutlineInputBorder()),
                      ),
                    SizedBox(height: 30),
                    Text("Galeri",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    SizedBox(height: 30),
                    GridView.count(
                      shrinkWrap: true,
                      padding: EdgeInsets.all(8.0),
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
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
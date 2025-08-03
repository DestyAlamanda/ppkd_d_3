import 'package:flutter/material.dart';

class TugasDua extends StatelessWidget {
  const TugasDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Lengkap", 
        style: TextStyle(color: Colors.grey[100])),
        backgroundColor: Colors.grey[600],
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("assets/photos/carmen2.jpg"),
          ),
          SizedBox(height: 30),
          Text(
            "Desty Asty Alamanda",
            style: TextStyle(
              fontSize: 24,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(Icons.email, color: Colors.grey[700]),
                  Spacer(),
                  Text(
                    "Alamanda@gmail.com",
                    style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(
                  color: const Color.fromARGB(255, 162, 162, 162),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(Icons.phone, color: Colors.grey[700]),
                  Spacer(),
                  Text(
                    "0898-8518-083",
                    style: TextStyle(fontSize: 20, color: Colors.grey[700])
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Postingan',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Followers',
                        style: TextStyle(
                          color: Colors.grey[100], 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Text(
              "Saya mahasiswa semester tujuh jurusan teknik informatika yang sedang belajar mobile programming di PPKD Jakarta Pusat Batch 3 tahun 2025, Saya sangat senang dan bersemangat.  ",
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              color: Colors.grey[600])
          ),
        ],
      ),
    );
  }
}
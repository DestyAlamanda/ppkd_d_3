import 'package:flutter/material.dart';

class TugasDua extends StatelessWidget {
  const TugasDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Lengkap", 
        style: TextStyle(
          color: Colors.white, 
          )
        ),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("assets/photos/carmen.jpg",)
          ),
          SizedBox(height: 20),
          Text("Desty Asty Alamanda", style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 162, 162, 162))
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                 border: Border.all(color: const Color.fromARGB(255, 162, 162, 162), width: 3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Icon(Icons.email, color: Colors.white),
                  // SizedBox(width: 15),
                  Spacer(),
                  Text("Destyastyalamanda@gmail.com", 
                  style: TextStyle(fontSize: 20, 
                  color: Colors.white,)
                  )]
              )  
             )
           ),
           Padding(
            padding: EdgeInsets.symmetric(vertical:20 ,horizontal: 20),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                 border: Border.all(color: const Color.fromARGB(255, 162, 162, 162), width: 3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Icon(Icons.phone,color: Colors.white),
                  // SizedBox(width: 15),
                  Spacer(),
                  Text("0898-8518-083",
                  style: TextStyle(fontSize: 20, 
                  color: Colors.white,)
                  )]
              )  
             )
           ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50)),
                      child: Center(child: Text('Postingan', style: TextStyle(color: const Color.fromARGB(255, 94, 92, 92)))),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color:const Color.fromARGB(255, 162, 162, 162),
                      borderRadius: BorderRadius.circular(50)),
                      child: Center(child: Text('Followers', style: TextStyle(color: Colors.grey[100]))),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 200),
          Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text("saya mahasiswa semester 7 jurusan teknik informatika yang sedang belajar flutter saya mahasiswa semester 7 jurusan teknik informatika yang sedang belajar fluttersaya mahasiswa semester 7 jurusan teknik informatika yang sedang belajar flutter "),
          ), 
           Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: const Color.fromARGB(255, 162, 162, 162), width: 3),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
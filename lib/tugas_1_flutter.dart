import 'package:flutter/material.dart';

class TugasSatu extends StatelessWidget {
  const TugasSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Saya", 
        style: TextStyle(color: Colors.white, fontFamily : "LibertinusSerif" )
        ),
        backgroundColor: Colors.deepPurple[200],
        centerTitle: true,
      ),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Desty Asty Alamanda", 
            style: TextStyle(
              fontSize: 25, 
              color: Colors.deepPurple[200],
              fontWeight: FontWeight.bold, 
              fontFamily : "LibertinusSeriff")
              ),
              SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, color: Colors.deepPurple[200]), 
              Text("Jakarta", style: TextStyle(color: Colors.deepPurple[200], fontWeight: FontWeight.bold)
              )
            ],
          ),
          SizedBox(height: 20),
          Text("Seorang pelajar yang sedang belajar Flutter.",
          style: TextStyle(color: Colors.deepPurple[200], fontWeight: FontWeight.bold)
          )
        ],
      ),
    );

  }
}
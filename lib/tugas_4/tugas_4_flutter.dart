import 'package:flutter/material.dart';

class TugasEmpat extends StatelessWidget {
  const TugasEmpat({super.key});

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
    );
  }
}
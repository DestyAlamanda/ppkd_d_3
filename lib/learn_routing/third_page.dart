import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(title: Text('Third Page')),
      body: Center(
        child: Text(
          'Ini adalah Page 3\n(tidak bisa kembali ke halaman sebelumnya)',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            color: Colors.indigoAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

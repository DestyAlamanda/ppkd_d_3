import 'package:flutter/material.dart';

class TugasSepuluhB extends StatelessWidget {
  const TugasSepuluhB({
    super.key,
    required this.name,
    required this.email,
    this.phone,
    required this.address,
  });
  final String name;
  final String email;
  final String? phone;
  final String address;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Terima kasih, $name dari $address telah mendaftar.",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

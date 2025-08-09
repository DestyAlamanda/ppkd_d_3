import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isCheck = false;
  bool isCheckSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: isCheckSwitch == true ? Colors.black : Colors.white,
      child: Column(
        children: [
          Text(
            "Syarat dan Ketentuan",
            style: TextStyle(
              color: isCheckSwitch == true ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Text("Saya menyetujui semua persyaratan yang berlaku"),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.red,
                value: isCheck,
                onChanged: (value) {
                  setState(() {
                    isCheck = value!;
                  });
                },
              ),
              Text(
                isCheck == true
                    ? "Lanjutkan pendaftaran diperbolehkan"
                    : "Anda belum bisa melanjutkan",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

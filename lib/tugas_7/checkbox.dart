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
          Padding(padding: EdgeInsetsGeometry.all(10)),
          Row(
            children: [
              Checkbox(
                activeColor: Color(0xff21BDCA),
                value: isCheck,
                onChanged: (value) {
                  setState(() {
                    isCheck = value!;
                  });
                },
              ),
              Expanded(
                child: Text(
                  "Saya menyetujui semua persyaratan yang berlaku",
                  softWrap: true,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            isCheck == true
                ? "Lanjutkan pendaftaran diperbolehkan"
                : "Anda belum bisa melanjutkan",
            style: TextStyle(
              fontSize: 15,
              color: isCheck == true ? Color(0xff21BDCA) : Colors.pink[300],
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

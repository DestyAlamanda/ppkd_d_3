import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? dropdownSelect;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(padding: EdgeInsetsGeometry.all(10)),
          SizedBox(height: 10),
          DropdownButton(
            value: dropdownSelect,
            hint: Text("Pilih Kategori"),
            items: ["Elektronik", "Pakaian", "Makanan", "Lainnya"].map((
              String value,
            ) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
            onChanged: (value) {
              setState(() {});
              dropdownSelect = value;
            },
          ),
          SizedBox(height: 10),
          Text(
            dropdownSelect != null
                ? "Anda memilih kategori: $dropdownSelect"
                : "Belum memilih kategori",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

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
          SizedBox(height: 8),
          Text(
            "Pilih Kategori Produk",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
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

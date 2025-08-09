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
          Text("Pilih Kategori Produk"),
          DropdownButton(
            value: dropdownSelect,
            hint: Text("Pilih Warna"),
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
        ],
      ),
    );
  }
}

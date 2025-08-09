import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text("Pilih Tanggal Lahir"),
          ElevatedButton(
            child: const Text("Pilih Tanggal Lahir"),
            onPressed: () async {
              final DateTime? pickerDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              if (pickerDate != null) {
                setState(() {
                  selectedDate = pickerDate;
                });
              }
            },
          ),
          // Text(selectedDate?.toString() ?? "Belum pilih tanggal"),
          // Text(
          //   selectedDate == null
          //       ? "Pilih tanggal dulu"
          //       : DateFormat('EEEE', "id_ID").format(selectedDate!),
          // ),
          // Text(
          //   selectedDate == null
          //       ? "Pilih tanggal dulu"
          //       : DateFormat('yyyy').format(selectedDate!),
          // ),
          // Text(
          //   selectedDate == null
          //       ? "Pilih tanggal dulu"
          //       : DateFormat('MMM', "id_ID").format(selectedDate!),
          // ),
          Text(
            selectedDate == null
                ? "Pilih tanggal dulu"
                : "Tanggal lahir : ${DateFormat('dd MMMM yyyy', "id_ID").format(selectedDate!)}",
          ),
        ],
      ),
    );
  }
}

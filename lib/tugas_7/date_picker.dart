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
          SizedBox(height: 8),
          const Text(
            "Pilih Tanggal Lahir",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          // SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
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
          ),

          Text(
            selectedDate == null
                ? "Pilih tanggal dulu"
                : "Tanggal lahir : ${DateFormat('dd MMMM yyyy', "id_ID").format(selectedDate!)}",
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

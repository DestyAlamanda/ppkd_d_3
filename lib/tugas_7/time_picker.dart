import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        Text(
          "Atur Pengingat",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          child: Text("Pilih Waktu Pengingat"),
          onPressed: () async {
            final TimeOfDay? pickerDate = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
            if (pickerDate != null) {
              setState(() {});
              selectedTime = pickerDate;
            }
          },
        ),
        SizedBox(height: 10),
        Text(
          selectedTime == null
              ? "Pilih jam dulu"
              : "Pengingat diatur pukul: ${selectedTime!.format(context)}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}

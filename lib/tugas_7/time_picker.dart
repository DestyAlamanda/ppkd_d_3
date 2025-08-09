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
    return Container(
      child: Column(
        children: [
          Text("Atur Pengingat"),
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
          Text(
            selectedTime == null
                ? "Pilih jam dulu"
                : "Pengingat Waktu Diatur ${selectedTime!.hour.toString()} : ${selectedTime!.minute.toString()} ",
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ppkd_d_3/tugas_1/tugas_1_flutter.dart';
import 'package:ppkd_d_3/tugas_2/tugas_2_flutter.dart';
import 'package:ppkd_d_3/tugas_3/tugas_3_flutter.dart';
import 'package:ppkd_d_3/tugas_4/tugas_4_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // fontFamily: "Poppins"
      ),
      home: TugasEmpat()
    );
  }
}


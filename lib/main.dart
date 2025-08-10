import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:ppkd_d_3/tugas_6/tugas_6_flutter.dart';

void main() {
  initializeDateFormatting("id_ID");
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        fontFamily: "Poppins",
      ),
      home: TugasEnam(),

      // initialRoute: '/',
      // routes: {
      //   '/': (context) => LoginPage(),
      //   '/homepage': (context) => HomePage(),
      //   '/second': (context) => SecondPage(),
      //   '/third': (context) => ThirdPage(),
      // },
    );
  }
}

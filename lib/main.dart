import 'package:flutter/material.dart';
import 'package:ppkd_d_3/learn_routing/home_page.dart';
import 'package:ppkd_d_3/learn_routing/login_page.dart';
import 'package:ppkd_d_3/learn_routing/second_page.dart';
import 'package:ppkd_d_3/learn_routing/third_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        fontFamily: "Poppins",
      ),
      // home: TugasEnam(),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/homepage': (context) => HomePage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
      },
    );
  }
}

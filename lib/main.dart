import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
<<<<<<< HEAD
import 'package:ppkd_d_3/tugas_15/view/splash_screen.dart';
=======
import 'package:ppkd_d_3/tugas_15/view/login_user.dart';
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31

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
<<<<<<< HEAD
      home: SplashScreen(),
=======
      home: LoginScreen(),
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31

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

// import 'package:flutter/material.dart';
// import 'package:ppkd_d_3/tugas_11/shared_preference.dart';
// import 'package:ppkd_d_3/tugas_15/view/login_user.dart';

// class LogOutButton extends StatelessWidget {
//   const LogOutButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         PreferenceHandler.removeLogin();
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const LoginScreen()),
//         );
//       },
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Color(0xFF1A2A80),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
//         elevation: 4,
//       ),
//       child: Text(
//         "Keluar",
//         style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

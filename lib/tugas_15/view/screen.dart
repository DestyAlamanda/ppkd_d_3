import 'package:flutter/material.dart';
import 'package:ppkd_d_3/tugas_15/api/user.dart';
import 'package:ppkd_d_3/tugas_15/model/get_user_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GetUserModel? userData;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> loadUserData() async {
    final data = await AuthenticationAPI.getProfile();
    setState(() {
      userData = data;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "Detail Siswa",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF1A2A80),
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      //       body: isLoading
      //           ? const Center(child: CircularProgressIndicator())
      //           : Padding(
      //               padding: const EdgeInsets.all(20.0),
      //               child: Column(
      //                 children: [
      //                   Center(
      //                     child: Column(
      //                       mainAxisSize: MainAxisSize.min,
      //                       children: [
      //                         CircleAvatar(
      //                           radius: 45,
      //                           backgroundColor: const Color(0xFF1A2A80),
      //                           child: Text(
      //                             (userData?.data?.name?.isNotEmpty ?? false)
      //                                 ? userData!.data!.name![0].toUpperCase()
      //                                 : '',
      //                             style: const TextStyle(
      //                               color: Colors.white,
      //                               fontSize: 22,
      //                               fontWeight: FontWeight.bold,
      //                             ),
      //                           ),
      //                         ),
      //                         const SizedBox(height: 20),
      //                         Card(
      //                           color: Colors.white,
      //                           elevation: 3,
      //                           shape: RoundedRectangleBorder(
      //                             borderRadius: BorderRadius.circular(16),
      //                           ),
      //                           child: Padding(
      //                             padding: const EdgeInsets.symmetric(
      //                               horizontal: 20,
      //                               vertical: 30,
      //                             ),
      //                             child: Column(
      //                               crossAxisAlignment: CrossAxisAlignment.start,
      //                               children: [
      //                                 _buildInfoRow(
      //                                   Icons.person,
      //                                   "Nama",
      //                                   userData?.data?.name?.toString() ?? '',
      //                                 ),
      //                                 const Divider(),
      //                                 _buildInfoRow(
      //                                   Icons.email,
      //                                   "Email",
      //                                   userData?.data?.email?.toString() ?? '',
      //                                 ),
      //                               ],
      //                             ),
      //                           ),
      //                         ),
      //                         const SizedBox(height: 20),
      //                         // Tombol logout
      //                         Card(
      //                           color: Colors.white,
      //                           elevation: 4,
      //                           shape: RoundedRectangleBorder(
      //                             borderRadius: BorderRadius.circular(10),
      //                           ),
      //                           child: const Padding(
      //                             padding: EdgeInsets.all(20),
      //                             child: SizedBox(
      //                               width: double.infinity,
      //                               height: 40,
      //                               child: LogOutButton(),
      //                             ),
      //                           ),
      //                         ),

      //                       ],

      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //     );
      //   }

      //   Widget _buildInfoRow(IconData icon, String label, String value) {
      //     return Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 12.0),
      //       child: Row(
      //         children: [
      //           Icon(icon, color: const Color(0xFF1A2A80), size: 26),
      //           const SizedBox(width: 16),
      //           Expanded(
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   label,
      //                   style: const TextStyle(fontSize: 14, color: Colors.grey),
      //                 ),
      //                 const SizedBox(height: 4),
      //                 Text(
      //                   value,
      //                   style: const TextStyle(
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.w600,
      //                     color: Colors.black87,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     );
      //   }
      // }

      // class LogOutButton extends StatelessWidget {
      //   const LogOutButton({super.key});

      //   @override
      //   Widget build(BuildContext context) {
      //     return ElevatedButton.icon(
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.red,
      //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      //       ),
      //       onPressed: () async {
      //         await PreferenceHandler.clearAll(); // Hapus token + login status
      //         Navigator.pushReplacement(
      //           context,
      //           MaterialPageRoute(builder: (_) => const LoginScreen()),
      //         );
      //       },
      //       icon: const Icon(Icons.logout, color: Colors.white),
      //       label: const Text("Logout", style: TextStyle(color: Colors.white)),
      //     );
    );
  }
}

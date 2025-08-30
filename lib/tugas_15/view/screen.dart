import 'package:flutter/material.dart';
import 'package:ppkd_d_3/tugas_11/shared_preference.dart';
import 'package:ppkd_d_3/tugas_15/api/user.dart';
import 'package:ppkd_d_3/tugas_15/model/get_user_model.dart';
import 'package:ppkd_d_3/tugas_15/view/login_user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const id = "/screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GetUserModel? userData;
  bool isLoading = true;

  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> loadUserData() async {
    setState(() {
      isLoading = true;
    });

    try {
      final data = await AuthenticationAPI.getProfile();
      setState(() {
        userData = data;
        _nameController.text = userData?.data?.name ?? '';
      });
    } catch (e) {
      print("Error load user: $e");
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> _editNameDialog() async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text(
            "Edit Nama",
            style: TextStyle(color: Color(0xFF1A2A80)),
          ),
          content: TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              hintText: "Masukkan nama baru",
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                "Batal",
                style: TextStyle(color: Color(0xFF1A2A80)),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1A2A80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
              ),
              onPressed: () async {
                final newName = _nameController.text.trim();
                if (newName.isNotEmpty) {
                  try {
                    await AuthenticationAPI.updateUser(
                      name: newName,
                    ); // perbaikan
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Nama berhasil diperbarui"),
                        backgroundColor: Color(0xFF1A2A80),
                      ),
                    );
                    await loadUserData(); // refresh data
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Gagal update nama: $e"),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                }
              },
              child: const Text(
                "Simpan",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildInfoRow(String label, String value, {bool isEditable = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(
            label == "Email" ? Icons.email : Icons.person,
            color: const Color(0xFF1A2A80),
            size: 26,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          if (isEditable)
            IconButton(
              icon: const Icon(Icons.edit, color: Color(0xFF1A2A80)),
              onPressed: _editNameDialog,
            ),
        ],
      ),
    );
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
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: const Color(0xFF1A2A80),
                    child: Text(
                      (userData?.data?.name?.isNotEmpty ?? false)
                          ? userData!.data!.name![0].toUpperCase()
                          : '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Card(
                    color: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildInfoRow(
                            "Nama",
                            userData?.data?.name ?? '',
                            isEditable: true,
                          ),
                          const Divider(),
                          _buildInfoRow("Email", userData?.data?.email ?? ''),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Tombol Logout
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF1A2A80),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () async {
                        await PreferenceHandler.removeLogin();
                        await PreferenceHandler.removeToken();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const LoginScreen(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.logout, color: Colors.white),
                      label: const Text(
                        "Logout",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

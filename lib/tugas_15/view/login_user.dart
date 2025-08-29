import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:ppkd_d_3/tugas_11/shared_preference.dart';
import 'package:ppkd_d_3/tugas_15/api/user.dart';
import 'package:ppkd_d_3/tugas_15/model/register_model.dart';
import 'package:ppkd_d_3/tugas_15/view/post_api.dart';
import 'package:ppkd_d_3/tugas_15/view/screen.dart';
=======
import 'package:ppkd_d_3/tugas_11/shared_preference.dart'; // PreferenceHandler
import 'package:ppkd_d_3/tugas_15/api/user.dart'; // Pastikan ini ada
import 'package:ppkd_d_3/tugas_15/view/post_api.dart';
import 'package:ppkd_d_3/tugas_15/view/screen.dart'; // HomeScreen
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const id = "/login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
<<<<<<< HEAD
  RegisterUserModel? user;
  String? errorMessage;
  bool isVisibility = false;
  bool isLoading = false;
  void loginUser() async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email, dan Password tidak boleh kosong")),
      );
      isLoading = false;

      return;
    }
    try {
      final result = await AuthenticationAPI.loginUser(
        email: email,
        password: password,
      );
      setState(() {
        user = result;
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Login berhasil")));
      PreferenceHandler.saveToken(user?.data?.token.toString() ?? "");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
      print(user?.toJson());
    } catch (e) {
      print(e);
      setState(() {
        errorMessage = e.toString();
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(errorMessage.toString())));
    } finally {
      setState(() {});
      isLoading = false;
    }
=======
  bool isPasswordVisible = false;

  Future<void> login() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email dan Password tidak boleh kosong")),
      );
      return;
    }

    final userData = await AuthenticationAPI.loginUser(
      email: email,
      password: password,
    );
    PreferenceHandler.saveLogin();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Login berhasil"),
        backgroundColor: Colors.green,
      ),
    );
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              Center(
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A2A80),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.school,
                    color: Colors.white,
                    size: 48,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Selamat Datang",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                "Masuk untuk melanjutkan",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 32),

<<<<<<< HEAD
=======
              // Email
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31
              const Text("Email", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 8),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Masukkan email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 20),

<<<<<<< HEAD
=======
              // Password
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31
              const Text("Kata Sandi", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 8),
              TextField(
                controller: passwordController,
<<<<<<< HEAD
                obscureText: !isVisibility,
=======
                obscureText: !isPasswordVisible,
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31
                decoration: InputDecoration(
                  hintText: "Masukkan kata sandi",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
<<<<<<< HEAD
                      isVisibility ? Icons.visibility : Icons.visibility_off,
=======
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
<<<<<<< HEAD
                        isVisibility = !isVisibility;
=======
                        isPasswordVisible = !isPasswordVisible;
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 30),

<<<<<<< HEAD
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    loginUser();
                  },
=======
              // Tombol Login
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: login,
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1A2A80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Masuk",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

<<<<<<< HEAD
=======
              // Navigasi ke halaman daftar
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Belum punya akun?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => RegisterPage()),
                      );
                    },
                    child: const Text(
                      "Daftar",
                      style: TextStyle(
                        color: Color(0xFF1A2A80),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

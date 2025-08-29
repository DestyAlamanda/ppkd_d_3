import 'package:flutter/material.dart';
import 'package:ppkd_d_3/tugas_11/shared_preference.dart';
import 'package:ppkd_d_3/tugas_15/api/user.dart';
import 'package:ppkd_d_3/tugas_15/model/register_model.dart';
import 'package:ppkd_d_3/tugas_15/view/post_api.dart';
import 'package:ppkd_d_3/tugas_15/view/screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const id = "/login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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

              const Text("Kata Sandi", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 8),
              TextField(
                controller: passwordController,
                obscureText: !isVisibility,
                decoration: InputDecoration(
                  hintText: "Masukkan kata sandi",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isVisibility ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isVisibility = !isVisibility;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 30),

              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    loginUser();
                  },
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

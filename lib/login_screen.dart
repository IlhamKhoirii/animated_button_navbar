import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'ilham_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordTertutup = true;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void togglePasswordVisibility() {
    setState(() {
      passwordTertutup = !passwordTertutup;
    });
  }

  void login() {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    if (username.isNotEmpty && password.isNotEmpty) {
      // logika login bisa ditambahkan di sini
      Get.offNamed('/ilham');
    } else {
      Get.snackbar(
        'Error',
        'Username dan password tidak boleh kosong',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              controller: passwordController,
              obscureText: passwordTertutup,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    passwordTertutup ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: togglePasswordVisibility,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              final box = GetStorage();
              box.write('username', usernameController.text);
              Get.to(()=> IlhamScreen());
            }, 
            child: Text("Login")),
          ],
        ),
      ),
    );
  }
}

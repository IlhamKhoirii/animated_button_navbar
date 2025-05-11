import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      final box = GetStorage();
      final statusUsername = box.read('username');

      // Jika ada username tersimpan, langsung ke IlhamScreen
      if (statusUsername != null && statusUsername.isNotEmpty) {
        Get.offNamed('/ilham');
      } else {
        Get.offNamed('/login'); // Arahkan ke login jika belum ada data
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Logo App'), CircularProgressIndicator()],
        ),
      ),
    );
  }
}

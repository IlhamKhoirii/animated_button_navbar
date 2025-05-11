import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'ilham_screen.dart';
import 'login_screen.dart';
import 'splash_screen.dart';
import 'profile_screen.dart';

void main() async {
  await GetStorage.init(); // Initialize GetStorage
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cobaan',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/', page: () => const LoginScreen()),
        GetPage(name: '/ilham', page: () => const IlhamScreen()),
        GetPage(name: '/splash', page: () => const SplashScreen()),
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/profile', page: () => const ProfileScreen()), // Tambahkan rute profile
      ],
    );
  }
}

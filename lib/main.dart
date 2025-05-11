import 'package:flutter/material.dart';
import 'ilham_screen.dart';
import 'login_screen.dart';
import 'package:get/get.dart';
import 'splash_screen.dart';
import 'package:get_storage/get_storage.dart';

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
        GetPage(name: '/', page: () => LoginScreen()),
        GetPage(name: '/ilham', page: () => IlhamScreen()),
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/login', page: () => LoginScreen()),
      ],
    );
  }
}

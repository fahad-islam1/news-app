import 'package:byahad_app/screen/app_translaton.dart';
import 'package:byahad_app/screen/bottam_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: AppTranslations(),
      locale: Locale('en', 'US'), // Default locale
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
            surfaceTintColor: Colors.white,
          backgroundColor: Colors.white
            ,elevation: 0
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomNavBar(),
    );
  }
}


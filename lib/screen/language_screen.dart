import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Translate"),
        centerTitle: false,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('title'.tr),
            TextButton(
                onPressed: (){
                  Get.updateLocale(Locale('en','US'));
                },
                child: Text('Translate to English')
            ),
            TextButton(
                onPressed: (){
                  Get.updateLocale(Locale('ur','UR'));
                },
                child: Text('Translate to Urdu')
            ),
            TextButton(
                onPressed: (){
                  Get.updateLocale(Locale('hi','IN'));
                },
                child: Text('Translate to Hindi')
            )
          ],
        ),
      ),
    );
  }
}

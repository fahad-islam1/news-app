import 'package:byahad_app/screen/favourite_screen.dart';
import 'package:byahad_app/screen/home_screen.dart';
import 'package:byahad_app/screen/language_screen.dart';
import 'package:byahad_app/screen/weekly_screen.dart';
import 'package:byahad_app/screen/podcasts_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int selectTab = 0;

  changeTab(int index){
    setState(() {
      selectTab = index;
    });
  }

  List<Widget> screens = [
    const HomeScreen(),
    const WeeklyScreen(),
    const PodcastsScreen(),
    const SavedScreen(),
    const LanguageScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectTab,
        onTap: changeTab,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'.tr),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt),label: 'Weekly'.tr),
          BottomNavigationBarItem(icon: Icon(Icons.podcasts),label: 'Podcasts'.tr),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_rounded),label: 'Favourite'.tr),
          BottomNavigationBarItem(icon: Icon(Icons.language),label: 'Translate'.tr),
        ],
      ),
      body: screens[selectTab],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:navbar/tips.dart';
import 'auth.dart';

import 'bottomnavbar.dart';
import 'gallery.dart';
import 'home.dart';
import 'profile.dart';

void main() {
  runApp(RipeNGoApp());
}

class RipeNGoApp extends StatelessWidget {
  const RipeNGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF347928)),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(color: Color(0xFF99B994)),
          labelStyle: const TextStyle(color: Color(0xFF99B994)),
        ),
        textTheme: const TextTheme().copyWith(
          bodySmall: const TextStyle(color: Color(0xFF347928)),
          bodyMedium: const TextStyle(color: Color(0xFF347928)),
          bodyLarge: const TextStyle(color: Color(0xFF347928)),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(), // Set MainScreen as the home
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomePage(),
          GalleryPage(),
          TipsPage(),
          ProfilePage(),
          // Add more pages here
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 10.0,
          shape: CircleBorder(),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0xFFFCCD2A), Color(0xFF9D7E10)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: Image.asset("assets/scanner_icon.png", width: 40, height: 40),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
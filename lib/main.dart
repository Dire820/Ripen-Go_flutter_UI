
import 'package:flutter/material.dart';
import 'home.dart';
import 'auth.dart';

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
      home: HomePage(),
    );
  }
}

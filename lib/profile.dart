import 'package:flutter/material.dart';
import 'dart:ui';
import 'header_section.dart'; // Import HeaderSection

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFBE6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF347928),
        title: Text("", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        automaticallyImplyLeading: false, // Disable the back button
        elevation: 0, // Remove the elevation to make it seamless
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderSection(title: "Profile"), // Use HeaderSection with title
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
                    children: [
                      // Empty body
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
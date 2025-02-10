import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class TipsPage extends StatefulWidget {
  const TipsPage({super.key});

  @override
  _TipsPageState createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFBE6),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // Set the height of the AppBar
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF347928),
          centerTitle: true,
          elevation: 0,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TipsHeaderSection(), // Add the header section
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

class TipsHeaderSection extends StatelessWidget {
  const TipsHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0), // Reduced padding
      decoration: BoxDecoration(
        color: Color(0xFF347928), // Same color as the appbar
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start, // Align to the left
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset("assets/logo2.png", height: 40), // Reduced height
              Positioned(
                left: 0,
                top: 0,
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5), // Reduced blur
                  child: Image.asset("assets/logo2.png", height: 40, color: Colors.black.withOpacity(0.5)), // Reduced height
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Image.asset("assets/logo2.png", height: 40), // Reduced height
              ),
            ],
          ),
          SizedBox(width: 10), // Reduced spacing
          Text(
            "Tips",
            style: GoogleFonts.poppins(
              fontSize: 17.5, // Reduced font size
              fontWeight: FontWeight.bold,
              color: Color(0xFFFCCD2A),
              shadows: [
                Shadow(
                  offset: Offset(0, 1.5), // Reduced offset
                  blurRadius: 2.5, // Reduced blur radius
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
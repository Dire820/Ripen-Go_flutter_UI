import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  List<XFile?> selectedImages = [];
  final ImagePicker picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        selectedImages.add(image);
      });
    }
  }

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
                GalleryHeaderSection(), // Add the header section
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
                    children: [
                      selectedImages.isEmpty
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 20),
                                  Icon(
                                    Icons.add_photo_alternate_outlined,
                                    color: Color(0xFF347928),
                                    size: 100,
                                  ),
                                  SizedBox(height: 20),
                                  Text("No Recent File", style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: pickImage,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF347928),
                                      foregroundColor: const Color(0xFFFFFBE6),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                      elevation: 5,
                                    ),
                                    child: Text("Select Images"),
                                  ),
                                ],
                              ),
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
                              children: [
                                Text(
                                  "Recent",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                  ),
                                ),
                                SizedBox(height: 10),
                                GridView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 8,
                                  ),
                                  itemCount: selectedImages.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Color(0xFF347928)),
                                      ),
                                      child: Image.file(File(selectedImages[index]!.path), fit: BoxFit.cover),
                                    );
                                  },
                                ),
                              ],
                            ),
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

class GalleryHeaderSection extends StatelessWidget {
  const GalleryHeaderSection({super.key});

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
            "Gallery",
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
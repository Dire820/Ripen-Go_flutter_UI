
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Color(0xFF347928),
        clipBehavior: Clip.antiAlias,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF347928),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: _selectedIndex == 0 ? Color(0xFFFCCD2A) : const Color(0xFFFFFBE6)),
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: Icon(Icons.photo_library, color: _selectedIndex == 1 ? Color(0xFFFCCD2A) : const Color(0xFFFFFBE6)),
                onPressed: () => _onItemTapped(1),
              ),
              SizedBox(width: 90),
              IconButton(
                icon: Icon(Icons.grass, color: _selectedIndex == 2 ? Color(0xFFFCCD2A) : const Color(0xFFFFFBE6)),
                onPressed: () => _onItemTapped(2),
              ),
              IconButton(
                icon: Icon(Icons.person, color: _selectedIndex == 3 ? Color(0xFFFCCD2A) : const Color(0xFFFFFBE6)),
                onPressed: () => _onItemTapped(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

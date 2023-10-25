import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({this.currentIndex = 0, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.bathtub),
            label: "Home"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.microwave),
            label: "F O O D"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            label: "Delete"
        )
      ],
    );
  }
}

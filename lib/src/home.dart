import 'package:flutter/material.dart';
import 'bottomNavigationBar.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  var menuOpen = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 0) {
          return DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                centerTitle: false,
                title: const Text('Vista'),
                actions: const [],
                bottom: const TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(text: 'Tab Number 1'),
                    Tab(text: 'Tab Number 2'),
                    Tab(text: 'Tab Number 3'),
                    Tab(text: 'Tab Number 4'),
                  ],
                ),
              ),
              bottomNavigationBar: CustomBottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: _onItemTapped,
              ),
              body: Column(),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text('hello there'),
              centerTitle: true,
            ),
            bottomNavigationBar: CustomBottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: _onItemTapped,
            ),
            body: Column(),
          );
        }
      },
    );
  }
}

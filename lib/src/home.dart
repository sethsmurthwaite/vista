import 'package:flutter/material.dart';
import 'menuDrawer.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  var menuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
      items: const [BottomNavigationBarItem(
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
      ]),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('hello there'),
        centerTitle: true,
      ),
      body: Column(),
    );
  }
}




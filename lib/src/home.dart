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

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('hello there'),
        centerTitle: true,
      ),
      body: Column(),
    );
  }
}




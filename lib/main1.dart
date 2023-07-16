// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: ThemeData.light(),
      title: 'PHOTOGRAPHY',
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellow[50],
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red[100],
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.navigation_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined))
        ],
      ),

      appBar: AppBar(
        title: Text('Hello Rithwin!',
            style: TextStyle(
              fontSize: 30,
            )),
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Colors.black,
                  ),
                )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
        ],
      ),
    );
  }
}

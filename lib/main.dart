import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int myIndex = 0;
  List<Widget> ScreenList = [
    Text('Page 1'),
    Text('Page 2'),
    Text('Page 3'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: IndexedStack(
        children: ScreenList,
        index: myIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        selectedItemColor: Colors.white,
        currentIndex: myIndex,
        onTap: (index){
          //print(index);
          setState(() {
            myIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.camera),label: 'Camera'),
        ],
      ),
    ));
  }
}


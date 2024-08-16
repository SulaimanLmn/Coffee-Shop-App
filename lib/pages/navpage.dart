import 'package:flutter/material.dart';
import 'package:flutter_personal/pages/mainpage.dart';
import 'package:iconly/iconly.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int myIndex = 0;
  List<Widget> pageList = [
    MainPage(),
    const Center(child: Text("2")),
    const Center(child: Text("3")),
    const Center(child: Text("4")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        onDestinationSelected: (value) {
          setState(() {
            myIndex = value;
          });
        },
        selectedIndex: myIndex,
        destinations: const [
          NavigationDestination(icon: Icon(IconlyLight.home), label: ""),
          NavigationDestination(icon: Icon(IconlyLight.heart), label: ""),
          NavigationDestination(icon: Icon(IconlyLight.bag), label: ""),
          NavigationDestination(
              icon: Icon(IconlyLight.notification), label: ""),
        ],
      ),
      body: pageList[myIndex],
    );
  }
}

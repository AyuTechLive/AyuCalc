

import 'package:calculator_ayushshahi_ecell/profile.dart';
import 'package:flutter/material.dart';

import 'calci.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentpage = 0;
  List<Widget> pages =const [
    
    Profile(),
    Calci(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],
      //appBar: AppBar(
       // title: const Text('Flutter'),
     // ),
      
      bottomNavigationBar: NavigationBar(backgroundColor: Colors.black,
       
        destinations: const [
          NavigationDestination(icon: Icon(Icons.person,color: Colors.blue), label: 'Profile',),
          NavigationDestination(icon: Icon(Icons.calculate,color: Colors.blue), label: 'Home'),
        ],
        onDestinationSelected: (int lndex) {
          setState(() {
            currentpage = lndex;
          });
          
        },
        selectedIndex: currentpage,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sofiacare/home/home.dart';

class Start extends StatefulWidget {
  static String routeName = "/start";

  Start({super.key});

  static IconData? get icon => null;

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

   static  List<Widget> _widgetOptions = <Widget>[
  Home(catIcons: [], catNames: [],),
    Text(
      'Index 2: document',
      
    ),
    Text(
      'Index 3: Rendez-vous',
   
    ),
   
    Text(
      'Index 4: profile',
  
    ),
  ];
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFD9E4EE),
        body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
        bottomNavigationBar:  BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
           
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_document),
            label: 'Document',
     
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Rendez-vous',
        
          ),
       
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',

          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    ),
          
    );
  }
}


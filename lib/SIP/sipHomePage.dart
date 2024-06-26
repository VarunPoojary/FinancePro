import 'package:financialcalculator/SIP/SIPCalculatorPages/sipCalculatorHomePage.dart';
import 'package:financialcalculator/SIP/SIPCalculatorPages/swpCalculatorPage.dart';
import 'package:financialcalculator/SIP/sipFaqPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Course/sipCoursePage.dart';

class sipHomePage extends StatefulWidget {
  const sipHomePage({Key? key}) : super(key: key);

  @override
  State<sipHomePage> createState() => sipHomePageState();
}

class sipHomePageState extends State<sipHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    sipCalculatorHomePage(),
    swpCalculatorPage(),
    sipCoursePage(),
    sipFaqPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131313),
      body: Center(
        child: _children.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade400,
          backgroundColor: Color(0xff2b2b2b),
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset("assets/active_calculator.png", height: 20,),
              icon: Image.asset("assets/inactive_calculator.png",height: 20,),
              label: "SIP ",
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset("assets/active_swp.png", height: 20,),
              icon: Image.asset("assets/inactive_swp.png",height: 20,),
              label: "SWP ",
            ),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.play_circle,),
                icon: Icon(Icons.play_circle_outline),
                label: "My Learning"
            ),
            BottomNavigationBarItem(
                activeIcon: Image.asset("assets/active_faq.png", height: 20,),
                icon: Image.asset("assets/inactive_faq.png", height: 20,),
                label: "FAQ"
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index){
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

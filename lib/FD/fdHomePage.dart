import 'package:financialcalculator/FD/fdCalculator.dart';
import 'package:financialcalculator/FD/fdCoursePage.dart';
import 'package:financialcalculator/FD/fdFaqPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class fdHomePage extends StatefulWidget {
  const fdHomePage({Key? key}) : super(key: key);

  @override
  State<fdHomePage> createState() => fdHomePageState();
}

class fdHomePageState extends State<fdHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    fdCalculatorPage(),
    fdCoursePage(),
    fdFaqPage(),
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
              label: "FD Calculator",
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

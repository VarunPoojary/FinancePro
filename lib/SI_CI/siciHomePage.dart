import 'package:financialcalculator/SIP/SIPCalculatorPages/sipCalculatorHomePage.dart';
import 'package:financialcalculator/SIP/SIPCalculatorPages/swpCalculatorPage.dart';
import 'package:financialcalculator/SIP/sipFaqPage.dart';
import 'package:financialcalculator/SI_CI/siciCalculatorPages/siciCalculatorHomePage.dart';
import 'package:financialcalculator/SI_CI/siciCoursePage.dart';
import 'package:financialcalculator/SI_CI/siciFaqPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class siciHomePage extends StatefulWidget {
  const siciHomePage({Key? key}) : super(key: key);

  @override
  State<siciHomePage> createState() => siciHomePageState();
}

class siciHomePageState extends State<siciHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    siciCalculatorHomePage(),
    siciCoursePage(),
    siciFaqPage(),
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
              label: "SI/CI Calculator ",
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

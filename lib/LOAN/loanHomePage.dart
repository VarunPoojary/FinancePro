import 'package:financialcalculator/LOAN/loanCalculatorPage.dart';
import 'package:financialcalculator/LOAN/loanCoursePage.dart';
import 'package:financialcalculator/LOAN/loanFaqPage.dart';
import 'package:flutter/material.dart';


class loanHomePage extends StatefulWidget {
  const loanHomePage({Key? key}) : super(key: key);

  @override
  State<loanHomePage> createState() => loanHomePageState();
}

class loanHomePageState extends State<loanHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    loanCalculatorPage(),
    loanCoursePage(),
    loanFaqPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131313),
      body: Center(
        child: _children.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade400,
          backgroundColor: const Color(0xff2b2b2b),
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset("assets/active_calculator.png", height: 20,),
              icon: Image.asset("assets/inactive_calculator.png",height: 20,),
              label: "EMI Calculator",
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

import 'package:financialcalculator/SIP/SIPCalculatorPages/lumpsumSipCalculatorPage.dart';
import 'package:financialcalculator/SIP/SIPCalculatorPages/sipCalculator.dart';
import 'package:financialcalculator/SIP/SIPCalculatorPages/stepupSipCalculatorPage.dart';
import 'package:financialcalculator/SIP/SIPCalculatorPages/swpCalculatorPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class sipCalculatorHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xff131313),
        appBar: AppBar(
          backgroundColor: const Color(0xff131313),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            'SIP Calculator',
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Container(
                height: kToolbarHeight - 20.0,
                decoration: BoxDecoration(
                  color: const Color(0xff131313),
                ),
                child: TabBar(
                  tabs: [
                    Tab(
                      text: 'SIP',
                    ),
                    Tab(
                      text: 'Step-Up',
                    ),
                    Tab(
                      text: 'Lump Sum',
                    ),
                    // Tab(
                    //   text: 'SWP',
                    // ),
                  ],
                  dividerColor: Colors.transparent,
                  labelColor: Colors.black,
                  indicatorColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.white,
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  sipCalculatorPage(),
                  stepupSipCalculatorPage(),
                  lumpsumSipCalculatorPage(),
                  // swpCalculatorPage(),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}

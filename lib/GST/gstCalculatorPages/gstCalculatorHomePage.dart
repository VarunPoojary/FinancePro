import 'package:financialcalculator/GST/gstCalculatorPages/gstExclusiveCalculatorPage.dart';
import 'package:financialcalculator/GST/gstCalculatorPages/gstInclusiveCalculatorPage.dart';
import 'package:financialcalculator/SI_CI/siciCalculatorPages/siCalculatorPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../SI_CI/siciCalculatorPages/ciCalculatorPage.dart';


class gstCalculatorHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
            'GST Calculator',
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
                      text: 'GST Exclusive',
                    ),
                    Tab(
                      text: 'GST Inclusive',
                    ),
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
                  gstExclusiveCalculatorPage(),
                  gstInclusiveCalculatorPage(),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}

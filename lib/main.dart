import 'package:financialcalculator/GST/gstHomePage.dart';
import 'package:financialcalculator/LOAN/loanHomePage.dart';
import 'package:financialcalculator/SIP/sipHomePage.dart';
import 'package:financialcalculator/SI_CI/siciHomePage.dart';
import 'package:financialcalculator/homePage.dart';
import 'package:flutter/material.dart';
import 'RD/rdHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}

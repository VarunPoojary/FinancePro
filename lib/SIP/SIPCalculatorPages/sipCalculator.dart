import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:google_fonts/google_fonts.dart';

class sipCalculatorPage extends StatefulWidget {
  const sipCalculatorPage({Key? key}) : super(key: key);

  @override
  State<sipCalculatorPage> createState() => sipCalculatorPageState();
}

class sipCalculatorPageState extends State<sipCalculatorPage> {
  final TextEditingController monthlyInvestmentController =
      TextEditingController(text: '25000');
  final TextEditingController estimatedReturnController =
      TextEditingController(text: '12');
  final TextEditingController timePeriodController =
      TextEditingController(text: '10');

  int totalValue = 0;
  int investedAmount = 0;
  int estimatedReturns = 0;

  final format = NumberFormat.currency(
    name: "INR",
    locale: 'en_IN',
    decimalDigits: 0, // change it to get decimal places
    symbol: '₹ ',
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    calculateTotalValue();
  }

  void calculateTotalValue() {
    double P = double.parse(monthlyInvestmentController.text);
    double r = double.parse(estimatedReturnController.text) / 100 / 12;
    double n = double.parse(timePeriodController.text) * 12;

    double A = P * (pow(1 + r, n) - 1) / r * (1 + r);
    double invested = P * n;
    double returns = A - invested;

    setState(() {
      totalValue = A.round();
      investedAmount = invested.round();
      estimatedReturns = returns.round();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131313),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // SizedBox(height: 20,),
              Card(
                elevation: 2,
                shadowColor: Color(0xff3B6FD4),
                color: Color(0xff1c77ff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircularPercentIndicator(
                            animation: true,
                            animationDuration: 1000,
                            radius: 70,
                            lineWidth: 30,
                            percent: (estimatedReturns / totalValue),
                            progressColor: Color(0xffF4D75C),
                            backgroundColor: Colors.white,
                            // circularStrokeCap: CircularStrokeCap.round,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                width: 10,
                                height: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'INVESTED AMOUNT',
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF4D75C),
                                  // border: Border.all(
                                  //   width: 1,
                                  //   color: Colors.blueGrey,
                                  // ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                width: 10,
                                height: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'EST. RETURNS',
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Invested Amount',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${format.format(investedAmount)}',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Est Returns',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${format.format(estimatedReturns)}',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Total Value',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${format.format(totalValue)}',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Text(
                    'Monthly \nInstallment',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    width: 170,
                    height: 50,
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff1c77ff),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            int currentValue = int.parse(monthlyInvestmentController.text);
                            setState(() {
                              currentValue -= 500;
                              monthlyInvestmentController.text = (currentValue)
                                  .toString(); // incrementing value
                            });
                          },
                        ),
                        Container(
                          width: 108,
                          height: 50,
                          alignment: Alignment.center,
                          child: TextField(
                            style: TextStyle(
                              height: 1,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                            controller: monthlyInvestmentController,
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff1c77ff),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(9),
                                bottomRight: Radius.circular(9),
                              ),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            int currentValue = int.parse(monthlyInvestmentController.text);
                            setState(() {
                              currentValue += 500;
                              monthlyInvestmentController.text = (currentValue)
                                  .toString(); // incrementing value
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Text(
                    'Expected Return \nRate',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    width: 170,
                    height: 50,
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff1c77ff),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            int currentValue = int.parse(estimatedReturnController.text);
                            setState(() {
                              currentValue -=1;
                              if(currentValue<=1)
                                currentValue=1;
                              estimatedReturnController.text = (currentValue)
                                  .toString(); // incrementing value
                            });
                          },
                        ),
                        Container(
                          width: 108,
                          height: 50,
                          alignment: Alignment.center,
                          child: TextField(
                            style: TextStyle(
                              height: 1,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                            controller: estimatedReturnController,
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff1c77ff),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(9),
                                bottomRight: Radius.circular(9),
                              ),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            int currentValue = int.parse(estimatedReturnController.text);
                            setState(() {
                              currentValue +=1;
                              estimatedReturnController.text = (currentValue)
                                  .toString(); // incrementing value
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Text(
                    'Time Period',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    width: 170,
                    height: 50,
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff1c77ff),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            int currentValue = int.parse(timePeriodController.text);
                            setState(() {
                              currentValue -=1;
                              if(currentValue <=0)
                                currentValue = 0;
                              timePeriodController.text = (currentValue)
                                  .toString(); // incrementing value
                            });
                          },
                        ),
                        Container(
                          width: 108,
                          height: 50,
                          alignment: Alignment.center,
                          child: TextField(
                            style: TextStyle(
                              height: 1,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                            controller: timePeriodController,
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff1c77ff),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(9),
                                bottomRight: Radius.circular(9),
                              ),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            int currentValue = int.parse(timePeriodController.text);
                            setState(() {
                              currentValue +=1;
                              timePeriodController.text = (currentValue)
                                  .toString(); // incrementing value
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),

              // SizedBox(height: 20),

              Row(
                children: [
                  GestureDetector(
                    onTap: calculateTotalValue,
                    child: Container(
                      width: 325,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xff1c77ff),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

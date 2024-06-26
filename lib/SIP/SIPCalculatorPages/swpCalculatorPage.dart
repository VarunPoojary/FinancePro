import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:google_fonts/google_fonts.dart';

class swpCalculatorPage extends StatefulWidget {
  const swpCalculatorPage({Key? key}) : super(key: key);

  @override
  State<swpCalculatorPage> createState() => swpCalculatorPageState();
}

class swpCalculatorPageState extends State<swpCalculatorPage> {
  final TextEditingController totalInvestmentController = TextEditingController(text: '500000');
  final TextEditingController monthlyWithdrawalController = TextEditingController(text: '10000');
  final TextEditingController estimatedReturnController = TextEditingController(text: '8');
  final TextEditingController timePeriodController = TextEditingController(text: '5');

  int totalInvestment = 0;
  int totalWithdrawal = 0;
  int finalValue = 0;

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
    calculateSWP();
  }

  void calculateSWP() {
    double initialInvestment = double.parse(totalInvestmentController.text);
    double corpus = double.parse(totalInvestmentController.text);
    double monthlyWithdrawal = double.parse(monthlyWithdrawalController.text);
    double annualRate = double.parse(estimatedReturnController.text);
    int years = int.parse(timePeriodController.text);

    // double monthlyRate = (1 + annualRate / 100).pow(1 / 12) - 1;
    double monthlyRate = pow(1 + annualRate / 100, 1 / 12) - 1;
    int totalMonths = years * 12;
    double totalW = 0.0;

    List<String> results = [];

    for (int month = 1; month <= totalMonths; month++) {
      double interestEarned = corpus * monthlyRate;
      corpus += interestEarned;
      corpus -= monthlyWithdrawal;
      totalW += monthlyWithdrawal;

      if (corpus <= 0) {
        corpus = 0;
        break;
      }
    }

    setState(() {
      totalInvestment = initialInvestment.round();
      totalWithdrawal = totalW.round();
      finalValue = corpus.round();
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'SWP Calculator',
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // SizedBox(height: 10,),
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
                      padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircularPercentIndicator(
                            animation: true,
                            animationDuration: 1000,
                            radius: 70,
                            lineWidth: 30,
                            // percent: (totalWithdrawal/totalInvestment),
                            percent: 0.2,
                            progressColor: Color(0xffF4D75C),
                            backgroundColor: Colors.white,
                            // circularStrokeCap: CircularStrokeCap.round,
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10),),
                                ),
                                width: 10,
                                height: 10,
                              ),
                              SizedBox(width: 5,),
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
                                  borderRadius: BorderRadius.all(Radius.circular(10),),
                                ),
                                width: 10,
                                height: 10,
                              ),
                              SizedBox(width: 5,),
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
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(height: 5,),
                          Text(
                            'Total Investment',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${format.format(totalInvestment)}',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Total Withdrawal',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${format.format(totalWithdrawal)}',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),

                          SizedBox(height: 10,),

                          Text(
                            'Final Value',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${format.format(finalValue)}',
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

              SizedBox(height: 20,),

              Row(
                children: [
                  Text(
                    'Total \nInvestment',
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
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                    ),
                    width: 170,
                    height: 50,
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff1c77ff),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(9), bottomLeft: Radius.circular(9),),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(Icons.remove,color: Colors.white,),
                          ),
                          onTap: () {
                            int currentValue = int.parse(totalInvestmentController.text);
                            setState(() {
                              currentValue -= 500;
                              totalInvestmentController.text = (currentValue)
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
                            controller: totalInvestmentController,
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
                              borderRadius: BorderRadius.only(topRight: Radius.circular(9), bottomRight: Radius.circular(9),),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(Icons.add,color: Colors.white,),
                          ),
                          onTap: () {
                            int currentValue = int.parse(totalInvestmentController.text);
                            setState(() {
                              currentValue += 500;
                              totalInvestmentController.text = (currentValue)
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
                    'Withdrawal \nPer Month',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                    ),
                    width: 170,
                    height: 50,
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff1c77ff),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(9), bottomLeft: Radius.circular(9),),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(Icons.remove,color: Colors.white,),
                          ),
                          onTap: () {
                            int currentValue = int.parse(monthlyWithdrawalController.text);
                            setState(() {
                              currentValue -=500;
                              if(currentValue<=0)
                                currentValue=0;
                              monthlyWithdrawalController.text = (currentValue)
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
                            controller: monthlyWithdrawalController,
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
                              borderRadius: BorderRadius.only(topRight: Radius.circular(9), bottomRight: Radius.circular(9),),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(Icons.add,color: Colors.white,),
                          ),
                          onTap: () {
                            int currentValue = int.parse(monthlyWithdrawalController.text);
                            setState(() {
                              currentValue +=500;
                              monthlyWithdrawalController.text = (currentValue)
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
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                    ),
                    width: 170,
                    height: 50,
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff1c77ff),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(9), bottomLeft: Radius.circular(9),),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(Icons.remove,color: Colors.white,),
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
                              borderRadius: BorderRadius.only(topRight: Radius.circular(9), bottomRight: Radius.circular(9),),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(Icons.add,color: Colors.white,),
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
                    width: 60,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                    ),
                    width: 170,
                    height: 50,
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff1c77ff),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(9), bottomLeft: Radius.circular(9),),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(Icons.remove,color: Colors.white,),
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
                              borderRadius: BorderRadius.only(topRight: Radius.circular(9), bottomRight: Radius.circular(9),),
                            ),
                            width: 30,
                            height: 50,
                            child: Icon(Icons.add,color: Colors.white,),
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
                height: 20,
              ),

              // SizedBox(height: 20),


              Row(
                children: [
                  GestureDetector(
                    onTap: calculateSWP,
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

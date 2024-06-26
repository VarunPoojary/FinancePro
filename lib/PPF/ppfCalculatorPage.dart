import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:google_fonts/google_fonts.dart';

class ppfCalculatorPage extends StatefulWidget {
  const ppfCalculatorPage({Key? key}) : super(key: key);

  @override
  State<ppfCalculatorPage> createState() => ppfCalculatorPageState();
}

class ppfCalculatorPageState extends State<ppfCalculatorPage> {
  final TextEditingController totalInvestmentController =
  TextEditingController(text: '10000');
  final TextEditingController estimatedReturnController =
  TextEditingController(text: '7.1');
  final TextEditingController timePeriodController =
  TextEditingController(text: '15');

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
    double yearlyInvestment = double.parse(totalInvestmentController.text);
    double annualRate = double.parse(estimatedReturnController.text) / 100;
    int years = int.parse(timePeriodController.text);

    double totalInvestment = yearlyInvestment*years;
    // double maturityAmount = yearlyInvestment*((pow(1+annualRate, years)-1)/annualRate);
    double maturityAmount = 0;
    for (int i = 0; i < years; i++) {
      maturityAmount = (maturityAmount + yearlyInvestment) * (1 + annualRate);
    }
    double returns = maturityAmount-totalInvestment;

    setState(() {
      investedAmount = totalInvestment.round();
      totalValue = maturityAmount.round();
      estimatedReturns = returns.round();
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
          'PPF Calculator',
          style: GoogleFonts.poppins(
            fontSize: 25,
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
                                'TOTAL INVESTMENT',
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
                                'TOTAL INTEREST',
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
                            'Total Interest',
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
                            'Maturity Value',
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
                    'Invested \nAmount',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 84,
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
                    'Rate of \nInterest',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 95,
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
                            double currentValue = double.parse(estimatedReturnController.text);
                            setState(() {
                              currentValue -=1.0;
                              if(currentValue<=1.0)
                                currentValue=1.0;
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
                            double currentValue = double.parse(estimatedReturnController.text);
                            setState(() {
                              currentValue +=1.0;
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
                height: 110,
              ),

              // SizedBox(height: 20),

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
        ),
      ),
    );
  }
}

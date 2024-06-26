
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class gstInclusiveCalculatorPage extends StatefulWidget {
  const gstInclusiveCalculatorPage({Key? key}) : super(key: key);

  @override
  State<gstInclusiveCalculatorPage> createState() => gstInclusiveCalculatorPageState();
}

class gstInclusiveCalculatorPageState extends State<gstInclusiveCalculatorPage> {
  final TextEditingController totalAmountController =
  TextEditingController(text: '25000');
  final TextEditingController taxSlabController =
  TextEditingController(text: '12');

  int totalGST = 0;
  int preGstAmount = 0;

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
    double totalAmount = double.parse(totalAmountController.text);
    double gstRate = double.parse(taxSlabController.text);

    double gstExclusiveAmount = totalAmount / (1 + gstRate / 100);
    double totalgst = totalAmount-gstExclusiveAmount;

    setState(() {
      totalGST = totalgst.round();
      preGstAmount = gstExclusiveAmount.round();
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
                            percent: ( totalGST / preGstAmount),
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
                                'PRE GST AMOUNT',
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
                                'TOTAL GST',
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
                            height: 35,
                          ),
                          Text(
                            'Total GST',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${format.format(totalGST)}',
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
                            'Pre-GST Amount',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${format.format(preGstAmount)}',
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
                    'Total Amount',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 50,
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
                            int currentValue = int.parse(totalAmountController.text);
                            setState(() {
                              currentValue -= 500;
                              totalAmountController.text = (currentValue)
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
                            controller: totalAmountController,
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
                            int currentValue = int.parse(totalAmountController.text);
                            setState(() {
                              currentValue += 500;
                              totalAmountController.text = (currentValue)
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
                    'Tax Slab',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 91,
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
                            int currentValue = int.parse(taxSlabController.text);
                            setState(() {
                              currentValue -=1;
                              if(currentValue<=1)
                                currentValue=1;
                              taxSlabController.text = (currentValue)
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
                            controller: taxSlabController,
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
                            int currentValue = int.parse(taxSlabController.text);
                            setState(() {
                              currentValue +=1;
                              taxSlabController.text = (currentValue)
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
                height: 150,
              ),

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

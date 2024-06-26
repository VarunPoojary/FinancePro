import 'package:financialcalculator/GST/gstHomePage.dart';
import 'package:financialcalculator/LOAN/loanHomePage.dart';
import 'package:financialcalculator/PPF/ppfHomePage.dart';
import 'package:financialcalculator/RD/rdHomePage.dart';
import 'package:financialcalculator/SIP/sipHomePage.dart';
import 'package:financialcalculator/SI_CI/siciHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'FD/fdHomePage.dart';

class homePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131313),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "Tip of the Day",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Small Steps lead to \ngreat results.",
                style: GoogleFonts.inter(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 5),
                    child: GestureDetector(
                      child: Card(
                        elevation: 2,
                        shadowColor: Color(0xff3B6FD4),
                        color: Color(0xff1c77ff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: Image.asset('assets/sipImage.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5, left: 15, right: 15),
                              child: Text(
                                // lecture.title,
                                "SIP Calculator",
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => sipHomePage()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,),
                    child: GestureDetector(
                      child: Card(
                        elevation: 2,
                        shadowColor: Color(0xff3B6FD4),
                        color: Color(0xff1c77ff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Image.asset('assets/fd.png'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5, left: 17, right: 17),
                              child: Text(
                                // lecture.title,
                                "FD Calculator",
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => fdHomePage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "All Calculators",
                style: GoogleFonts.inter(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 320,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:5,left: 5,top: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff2b2b2b),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: ListTile(
                          leading: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset('assets/loan.png'),
                          ),
                          title: Text(
                            "Loan Calculator",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => loanHomePage()),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:5,left: 5,top: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff2b2b2b),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: ListTile(
                          leading: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset('assets/gst.png'),
                          ),
                          title: Text(
                            "GST Calculator",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => gstHomePage()),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:5,left: 5,top: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff2b2b2b),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: ListTile(
                          leading: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset('assets/ppf.png'),
                          ),
                          title: Text(
                            "PPF Calculator",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ppfHomePage()),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:5,left: 5,top: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff2b2b2b),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: ListTile(
                          leading: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset('assets/rd.png'),
                          ),
                          title: Text(
                            "RD Calculator",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => rdHomePage()),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:5,left: 5,top: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff2b2b2b),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: ListTile(
                          leading: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset('assets/ci.png'),
                          ),
                          title: Text(
                            "SI And CI Calculator",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => siciHomePage()),
                            );
                          },
                        ),
                      ),
                    ),



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

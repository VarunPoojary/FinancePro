import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class fdFaqPage extends StatefulWidget {
  const fdFaqPage({super.key});

  @override
  State<fdFaqPage> createState() => fdFaqPageState();
}

class fdFaqPageState extends State<fdFaqPage> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131313),
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
          'FAQ',
          style: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //FAQ 1
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Card(
                elevation: 2,
                color: Color(0xff2b2b2b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ExpansionTile(
                  iconColor: Colors.white,
                  // title: Text("How does a SIP work?"),
                  title: Text(
                    "What is a Fixed Deposit (FD)?",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  shape: Border(),
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'A Fixed Deposit is a financial instrument provided by banks and non-banking financial companies where you can deposit money for a fixed tenure at a predetermined interest rate. The principal amount and interest are returned at the end of the term.',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //FAQ 2
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Card(
                elevation: 2,
                color: Color(0xff2b2b2b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ExpansionTile(
                  iconColor: Colors.white,
                  // title: Text("How does a SIP work?"),
                  title: Text(
                    "How is interest on FDs calculated?",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  shape: Border(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Need to update',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //FAQ 3
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Card(
                elevation: 2,
                color: Color(0xff2b2b2b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ExpansionTile(
                  iconColor: Colors.white,
                  // title: Text("How does a SIP work?"),
                  title: Text(
                    "What are the benefits of investing in FDs?",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  shape: Border(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Benefits include guaranteed returns, capital safety, flexibility in tenure, regular income (through interest payouts), and eligibility for loans against FDs. They are also relatively low-risk compared to market-linked instruments',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //FAQ 4
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Card(
                elevation: 2,
                color:  Color(0xff2b2b2b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ExpansionTile(
                  iconColor: Colors.white,
                  // title: Text("How does a SIP work?"),
                  title: Text(
                    "What documents are required to open an FD?",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  shape: Border(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'To open an FD, you typically need to complete the Know Your Customer (KYC) process, which requires valid identification documents such as a passport, driving license, Aadhaar card, voter ID, etc.',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //FAQ 5
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Card(
                elevation: 2,
                color: Color(0xff2b2b2b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ExpansionTile(
                  iconColor: Colors.black,
                  // title: Text("How does a SIP work?"),
                  title: Text(
                    "Are the returns on FDs taxable?",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  shape: Border(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Yes, the interest earned on FDs is taxable. It is added to your income and taxed according to your income tax slab. Banks deduct TDS (Tax Deducted at Source) if the interest exceeds INR 40,000 for individuals (INR 50,000 for senior citizens) per financial year',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //FAQ 6
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Card(
                elevation: 2,
                color: Color(0xff2b2b2b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ExpansionTile(
                  iconColor: Colors.white,
                  // title: Text("How does a SIP work?"),
                  title: Text(
                    "Can I withdraw my FD before maturity?",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  shape: Border(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Yes, you can withdraw your FD before maturity, but it may incur a penalty. The penalty terms vary by bank, and the interest rate applicable might be lower than the contracted rate',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //FAQ 7
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Card(
                elevation: 2,
                color: Color(0xff2b2b2b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ExpansionTile(
                  iconColor: Colors.white,
                  // title: Text("How does a SIP work?"),
                  title: Text(
                    "What is a loan against FD?",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  shape: Border(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'A loan against FD is a secured loan where the FD is used as collateral. The loan amount typically ranges from 75% to 95% of the FD value, and it has lower interest rates and zero prepayment penalties',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //FAQ 8
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Card(
                elevation: 2,
                color: Color(0xff2b2b2b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ExpansionTile(
                  iconColor: Colors.white,
                  // title: Text("How does a SIP work?"),
                  title: Text(
                    "Are FDs transferable?",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  shape: Border(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'FDs can be transferred between branches of the same bank but not between different banks. To transfer, you need to request the branch manager with the FD receipt.',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //FAQ 9
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Card(
                elevation: 2,
                color: Color(0xff2b2b2b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ExpansionTile(
                  iconColor: Colors.white,
                  // title: Text("How does a SIP work?"),
                  title: Text(
                    "What happens if the FD holder passes away before maturity?",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  shape: Border(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'If the FD holder passes away, the nominee or legal heir can claim the FD. The process usually involves submitting relevant documents like the death certificate and ID proof of the nominee.',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //FAQ 10
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Card(
                elevation: 2,
                color: Color(0xff2b2b2b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ExpansionTile(
                  iconColor: Colors.white,
                  // title: Text("How does a SIP work?"),
                  title: Text(
                    "What are tax-saving FDs?",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  shape: Border(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Tax-saving FDs are a type of fixed deposit that qualifies for a tax deduction under Section 80C of the Income Tax Act. These FDs have a lock-in period of 5 years and the maximum tax deduction limit is INR 1.5 lakh per financial year.',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

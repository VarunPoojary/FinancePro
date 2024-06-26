import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class rdFaqPage extends StatefulWidget {
  const rdFaqPage({super.key});

  @override
  State<rdFaqPage> createState() => rdFaqPageState();
}

class rdFaqPageState extends State<rdFaqPage> {
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
                    "What is a Recurring Deposit (RD)?",
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
                        'A Recurring Deposit is a financial instrument offered by banks and post offices in which individuals can deposit a fixed amount of money at regular intervals (usually monthly) and earn interest over a specified tenure.',
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
                    "How does an RD work?",
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
                        'In an RD, you deposit a fixed amount of money every month for a predetermined period. At the end of the tenure, you receive the total principal amount along with the interest earned over the period.',
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
                    "What are the eligibility criteria for opening an RD account?",
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
                        'Most banks require you to be an Indian resident, Non-Resident Indian (NRI), or a Hindu Undivided Family (HUF). Minors can also open an RD account with a guardian.',
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
                    "What is the minimum and maximum tenure for an RD?",
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
                        'The tenure for an RD usually ranges from 6 months to 10 years, depending on the bank or financial institution.',
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
                    "What is the minimum and maximum deposit amount for an RD?",
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
                        "The minimum deposit amount can vary from bank to bank, typically starting from as low as ₹100 per month. There is usually no upper limit, but it may depend on the bank's policy.",
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
                    "What are the interest rates on RDs?",
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
                        'Interest rates on RDs vary between banks and are generally in the range of 4% to 7% per annum. Senior citizens often receive a higher interest rate.',
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
                    "Can I withdraw my RD before maturity?",
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
                        'Yes, you can withdraw your RD before maturity, but it will attract a penalty. The penalty and the interest rate applicable for the period the deposit was held will depend on the bank’s policies.',
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
                    "Are there any tax benefits on RD investments?",
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
                        'The interest earned on an RD is taxable as per the individual’s income tax slab. However, there are no specific tax benefits for the principal amount deposited in an RD.',
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
                    "What happens if I miss an RD installment?",
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
                        'If you miss an RD installment, banks usually allow you to continue the RD with a penalty for the missed payment. Some banks may also reduce the interest rate for the delayed period.',
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
                    "Can I take a loan against my RD?",
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
                        'Yes, many banks offer the facility to take a loan against the RD, typically up to 90% of the deposit amount. The interest rate for the loan is generally 1-2% higher than the RD interest rate.',
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

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ppfFaqPage extends StatefulWidget {
  const ppfFaqPage({super.key});

  @override
  State<ppfFaqPage> createState() => ppfFaqPageState();
}

class ppfFaqPageState extends State<ppfFaqPage> {
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
                    "What is the Public Provident Fund (PPF)?",
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
                        'The PPF is a savings-cum-tax-saving instrument in India, introduced by the National Savings Institute of the Ministry of Finance in 1968. It aims to provide retirement security to self-employed individuals and workers in the unorganized sector.',
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
                    "Who is eligible to open a PPF account?",
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
                        'Any Indian citizen can open a PPF account. However, Non-Resident Indians (NRIs) are not eligible to open new PPF accounts. Minors can also have a PPF account under the guardianship of their parents.',
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
                    "What is the tenure of a PPF account?",
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
                        'The tenure of a PPF account is 15 years. However, it can be extended indefinitely in blocks of 5 years each after the maturity period.',
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
                    "What is the minimum and maximum investment limit for PPF?",
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
                        'The minimum investment required is ₹500 per year, and the maximum investment limit is ₹1.5 lakh per year. Contributions can be made in lump sums or in a maximum of 12 installments per year.',
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
                    "What is the current interest rate on PPF?",
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
                        'The interest rate on PPF is revised quarterly by the Government of India. As of the latest update, the PPF interest rate stands at 7.1% per annum (subject to change as per government notifications).',
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
                    "Are PPF investments tax-exempt?",
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
                        'Yes, PPF investments are eligible for tax benefits under Section 80C of the Income Tax Act. The interest earned and the maturity amount are also tax-free, making it an EEE (Exempt-Exempt-Exempt) investment.',
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
                    "Can a PPF account be opened in the name of a minor?",
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
                        'Yes, a PPF account can be opened in the name of a minor. The account will be operated by the guardian until the minor reaches the age of 18.',
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
                    "Can I withdraw money from my PPF account before maturity?",
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
                        'Partial withdrawals are allowed from the 7th financial year onwards. The amount that can be withdrawn is limited to 50% of the balance at the end of the 4th preceding year or the end of the preceding year, whichever is lower.',
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
                    "Can I take a loan against my PPF account?",
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
                        'Yes, you can take a loan against your PPF account between the 3rd and 6th financial year. The loan amount can be up to 25% of the balance at the end of the 2nd year immediately preceding the year in which the loan is applied.',
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
                    "What happens if I fail to invest the minimum amount in a financial year?",
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
                        'If the minimum investment of ₹500 is not made in a financial year, the account will be considered inactive. To reactivate the account, a penalty of ₹50 per year of default, along with the minimum subscription amount of ₹500 per year, must be paid.',
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

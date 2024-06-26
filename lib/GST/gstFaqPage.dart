import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class gstFaqPage extends StatefulWidget {
  const gstFaqPage({super.key});

  @override
  State<gstFaqPage> createState() => gstFaqPageState();
}

class gstFaqPageState extends State<gstFaqPage> {
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
                    "What is GST and how does it work?",
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
                        'GST (Goods and Services Tax) is a comprehensive, multi-stage, destination-based tax levied on every value addition. It replaces multiple indirect taxes like VAT, service tax, and excise duty, and is collected at each stage of the supply chain with credit allowed for the tax paid on previous purchases.',
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
                    "Who is required to register for GST?",
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
                        'Any business with an annual turnover exceeding ₹20 lakh (₹10 lakh for special category states) must register for GST. Additionally, certain businesses like casual taxable persons and non-resident taxable persons must also register irrespective of turnover.',
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
                    "What are the different types of GST?",
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
                        'GST comprises Central GST (CGST), State GST (SGST), Integrated GST (IGST), and Union Territory GST (UTGST). CGST and SGST are levied on intra-state transactions, while IGST is levied on inter-state transactions.',
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
                    "How do I file GST returns?",
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
                        'GST returns are filed online through the GST portal. Various forms are required, such as GSTR-1 for outward supplies, GSTR-3B for summary returns, and GSTR-9 for annual returns. Businesses must adhere to specific filing deadlines.',
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
                    "What is Input Tax Credit (ITC) and how can it be claimed?",
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
                        'ITC allows businesses to claim credit for the GST paid on purchases and expenses related to their business. To claim ITC, the goods or services must be used for business purposes, and the claimant must possess a valid tax invoice.',
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
                    "What is the GST rate for different goods and services?",
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
                        'GST rates vary depending on the type of goods or services. There are multiple tax slabs: 0%, 5%, 12%, 18%, and 28%. Essential items are usually taxed at lower rates, while luxury goods attract higher rates.',
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
                    "How does GST impact small businesses?",
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
                        'GST simplifies the tax structure and reduces the burden of multiple taxes. Small businesses benefit from the composition scheme, which allows them to pay tax at a fixed rate on turnover and reduces compliance requirements.',
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
                    "What is the penalty for not complying with GST regulations?",
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
                        'Non-compliance with GST regulations can result in various penalties, including late filing fees, interest on late payments, and penalties for incorrect returns. Severe non-compliance can lead to fines and prosecution.',
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
                    "How does GST affect e-commerce businesses?",
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
                        'E-commerce operators are required to collect Tax Collected at Source (TCS) at 1% on behalf of sellers on their platform. They must also comply with specific GST registration and return filing requirements.',
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
                    "What are the recent changes and updates in GST?",
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
                        'GST laws and regulations are periodically updated. Recent changes include adjustments in GST rates, amendments in return filing processes, and the introduction of new compliance requirements. Keeping up with these changes is crucial for businesses to remain compliant.',
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

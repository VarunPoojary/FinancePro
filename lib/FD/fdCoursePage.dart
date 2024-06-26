import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Models/dataModels.dart';
import '../SIP/Course/sipLecturePage.dart';

class fdCoursePage extends StatelessWidget {
  final List<Chapter> chapters = [
    Chapter(
      title: 'Chapter 1: Introduction to Fixed Deposits',
      lectures: [
        Lecture(
            title: 'Lecture 1: Understanding Fixed Deposits',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: 'Lecture 2: Types of Fixed Deposits',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
      ],
    ),
    Chapter(
      title: 'Chapter 2: Terms and Concepts in Fixed Deposits',
      lectures: [
        Lecture(
            title: 'Lecture 2.1: Key Terminologies',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: 'Lecture 2.2: Interest Calculation Methods',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
        Lecture(
            title: 'Lecture 2.3: Tax Implications',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:22min'),
        Lecture(
            title: '8. Compounding and its Impact on SIPs',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:23min'),
        Lecture(
            title: '9. Rupee Cost Averaging',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:23min'),
      ],
    ),
    Chapter(
      title: 'Chapter 3: Opening a Fixed Deposit',
      lectures: [
        Lecture(
            title: 'Lecture 3.1: Eligibility and Requirements',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: 'Lecture 3.2: Steps to Open an FD',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
        Lecture(
            title: 'Lecture 3.3: Choosing the Right Bank or Financial Institution',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:22min'),
      ],
    ),
    Chapter(
      title: 'Chapter 4: Managing Your Fixed Deposit',
      lectures: [
        Lecture(
            title: 'Lecture 4.1: Monitoring and Renewing Your FD',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: 'Lecture 4.2: Premature Withdrawal and Penalties',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
        Lecture(
            title: 'Lecture 4.3: Loan Against FD',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:22min'),
      ],
    ),
    Chapter(
      title: 'Chapter 5: Investment Strategies for Fixed Deposits',
      lectures: [
        Lecture(
            title: 'Lecture 5.1: Determining How Much to Invest',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: 'Lecture 5.2: Diversification and Laddering',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
        Lecture(
            title: 'Lecture 5.3: Regular vs. Tax-saving FD Investments',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:22min'),
      ],
    ),
    Chapter(
      title: 'Chapter 6: Advanced Topics in Fixed Deposits',
      lectures: [
        Lecture(
            title: 'Lecture 6.1: Fixed Deposits vs. Other Investment Options',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: 'Lecture 6.2: Digital Fixed Deposits and Fintech Innovations',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
        Lecture(
            title: 'Lecture 6.3: FD Investment for Different Life Stages',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:22min'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff131313),
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
          'Course Details',
          style: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              elevation: 2,
              shadowColor: Color(0xff3B6FD4),
              color: Color(0xff1c77ff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // lecture.title,
                            "Invest More!",
                            style: GoogleFonts.inter(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            // lecture.title,
                            "Unlock wealth \ncreation with \nour SIP course.",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: 125,
                          width: 125,
                          child: Image.asset('assets/fd.png'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 30,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // color: Color(0xff131313),
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 7,
                            ),
                            Icon(
                              Icons.watch_later,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "12h 56min",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 30,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // color: Color(0xff131313),
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 7,
                            ),
                            Icon(
                              Icons.folder_rounded,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "22 Lessons",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),

          Container(
            height: 430,
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ListView(
                children: chapters.map((chapter) {
                  return Card(
                    elevation: 2,
                    color: Color(0xff2b2b2b),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: ExpansionTile(
                      // title: Text(chapter.title),
                      title: Text(
                        chapter.title,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      iconColor: Colors.white,
                      shape: Border(),
                      children: chapter.lectures.map((lecture) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 0, right: 0, top: 5, bottom: 0),
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
                                child: Image.asset('assets/completed.png'),
                              ),
                              title: Text(
                                lecture.title,
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              trailing: Text(
                                lecture.time,
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LecturePage(
                                      lecture: lecture,
                                      lectures: chapter.lectures,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

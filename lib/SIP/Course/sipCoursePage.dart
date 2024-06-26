import 'package:financialcalculator/SIP/Course/sipArticlePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Models/dataModels.dart';
import 'sipLecturePage.dart';

class sipCoursePage extends StatelessWidget {
  final List<Chapter> chapters = [
    Chapter(
      title: 'Chapter 1',
      lectures: [
        Lecture(
            title: '1. What is a SIP?',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: '2. History and Evolution of SIPs in India',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
        Lecture(
            title: '3. Benefits of Investing in SIPs',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:22min'),
        Lecture(
            title: '4. SIP vs. Lump Sum Investment',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:23min'),
      ],
    ),
    Chapter(
      title: 'Chapter 2',
      lectures: [
        Lecture(
            title: '5. Net Asset Value (NAV)',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: '6. Expense Ratio',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
        Lecture(
            title: '7. Entry and Exit Loads',
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
      title: 'Chapter 3',
      lectures: [
        Lecture(
            title: '10. Regular SIP',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: '11. Flexi SIP',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
        Lecture(
            title: '12. Top-up SIP',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:22min'),
        Lecture(
            title: '13. Perpetual SIP',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:23min'),
        Lecture(
            title: '14. Trigger SIP',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:23min'),
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
            fontSize: 30,
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
              child: Row(
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
                  SizedBox(
                    height: 165,
                    width: 165,
                    child: Image.asset('assets/sipImage.png'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                height: 30,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xff2b2b2b),
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
                      color: Color(0xff1c77ff),
                    ),

                    SizedBox(
                      width: 7,
                    ),

                    Text(
                      "12h 56min",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
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
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xff2b2b2b),
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
                      color: Color(0xff1c77ff),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "22 Lessons",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => LecturePage(
                                //       lecture: lecture,
                                //       lectures: chapter.lectures,
                                //     ),
                                //   ),
                                // );
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ArticlePage(
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

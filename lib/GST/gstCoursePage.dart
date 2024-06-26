import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Models/dataModels.dart';
import '../SIP/Course/sipLecturePage.dart';

class gstCoursePage extends StatelessWidget {

  final List<Chapter> chapters = [
    Chapter(
      title: 'Chapter 1: Introduction to GST',
      lectures: [
        Lecture(
            title: 'Lecture 1.1: What is GST?',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: 'Lecture 1.2: Components and Benefits of GST',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
      ],
    ),
    Chapter(
      title: 'Chapter 2: Registration and Invoicing under GST',
      lectures: [
        Lecture(
            title: 'Lecture 2.1: GST Registration Essentials',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: 'Lecture 2.2: GST Invoice Requirements',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
      ],
    ),
    Chapter(
      title: 'Chapter 3: Filing GST Returns and Input Tax Credit (ITC)',
      lectures: [
        Lecture(
            title: 'Lecture 3.1: GST Returns Filing',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: 'Lecture 3.2: Input Tax Credit (ITC)',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
      ],
    ),
    Chapter(
      title: 'Chapter 4: GST Rates, HSN Codes, and Compliance',
      lectures: [
        Lecture(
            title: 'Lecture 4.1: Understanding GST Rates and HSN Codes',
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: 'Lecture 4.2: Compliance and Audit Requirements',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
      ],
    ),
    Chapter(
      title: 'Chapter 5: GST Impact on Business and Recent Updates',
      lectures: [
        Lecture(
            title: "Lecture 5.1: GST's Effect on Business Operations",
            videoUrl: 'https://www.youtube.com/watch?v=yNrmluocNFw&t=20s',
            time: '1:20min'),
        Lecture(
            title: 'Lecture 5.2: Recent Amendments and Key Updates',
            videoUrl: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
            time: '1:21min'),
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

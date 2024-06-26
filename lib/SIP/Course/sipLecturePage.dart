import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../Models/dataModels.dart';

class LecturePage extends StatefulWidget {
  final Lecture lecture;
  final List<Lecture> lectures;

  LecturePage({required this.lecture, required this.lectures});

  @override
  _LecturePageState createState() => _LecturePageState();
}

class _LecturePageState extends State<LecturePage> {
  late YoutubePlayerController _controller;
  late Lecture _currentLecture;

  @override
  void initState() {
    _currentLecture = widget.lecture;
    final videoID = YoutubePlayer.convertUrlToId(_currentLecture.videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    // _controller = YoutubePlayerController.fromVideoId()
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _playLecture(Lecture lecture) {
    setState(() {
      _currentLecture = lecture;
      // _controller.dispose();
      final videoID = YoutubePlayer.convertUrlToId(_currentLecture.videoUrl);
      print("Before");

      _controller.load(videoID!);
      // _controller.pause();
      print("After");
      print(_controller.initialVideoId.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131313),
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff131313),
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: Colors.white,
      //     ),
      //   ),
      //   title: Text(
      //     'Lectures',
      //     style: GoogleFonts.poppins(
      //       fontSize: 25,
      //       fontWeight: FontWeight.w600,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YoutubePlayerBuilder(
                player: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                ),
                builder: (context,player){
                  return Column(
                    children: [
                      player,
                    ],
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                _currentLecture.title,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Created by Varun Poojary",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 420,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ListView(
                    children: widget.lectures.map((lecture) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, top: 15, bottom: 0),
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
                            onTap: () => _playLecture(lecture),
                          ),
                        ),
                      );
                    }).toList(),
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

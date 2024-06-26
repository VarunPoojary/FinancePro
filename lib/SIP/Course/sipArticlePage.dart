import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../Models/dataModels.dart';

class ArticlePage extends StatefulWidget {
  final Lecture lecture;
  final List<Lecture> lectures;

  ArticlePage({required this.lecture, required this.lectures});

  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
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
          'Lectures',
          style: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _currentLecture.title,
                style: GoogleFonts.inter(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                _currentLecture.time,
                style: GoogleFonts.inter(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

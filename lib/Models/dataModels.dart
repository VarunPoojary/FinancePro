class Lecture {
  final String title;
  final String videoUrl;
  final String time;

  Lecture({
    required this.title,
    required this.videoUrl,
    required this.time,
  });
}

class Chapter {
  final String title;
  final List<Lecture> lectures;

  Chapter({
    required this.title,
    required this.lectures,
  });
}

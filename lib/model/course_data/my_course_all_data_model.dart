import 'package:flutter/cupertino.dart';
import 'package:studym8/model/course_data/my_course_data_model.dart';

class Video {
  final String title;
  final String? duration;
  final bool isDownload;
  final String subtitre;

  const Video(
      {required this.title,
      required this.isDownload,
      this.duration,
      required this.subtitre});
}

class MyCourseAllData {
  final MyCourseData courseData;
  final List<Video> videos;

  const MyCourseAllData({required this.courseData, required this.videos});
}

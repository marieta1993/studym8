class CourseData {
  final String? image;
  final String title;
  final String? subTitle;
  final String? description;
  final List? skills;
  final String? tutor;
  final String? instructor;
  final String? instructorRole;
  final String? instructorImage;
  final double? rating;

  const CourseData(
      {required this.title,
      this.image,
      this.subTitle,
      this.description,
      this.tutor,
      this.instructor,
      this.instructorRole,
      this.instructorImage,
      this.rating,
      this.skills});
}

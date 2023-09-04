import 'package:equatable/equatable.dart';
import 'package:fivoza_learning/core/res/media_res.dart';

class PageContent extends Equatable {
  const PageContent({
    required this.image,
    required this.title,
    required this.description,
  });
  const PageContent.first()
      : this(
          image: MediaRes.education,
          title: 'Brand new curriculum',
          description:
              'This is the first online education platform designed by the '
              "world's top professors",
        );

  const PageContent.second()
      : this(
          image: MediaRes.onlineExam,
          title: 'Brand a fun atmosphere',
          description:
              'This is the first online education platform designed by the '
              "world's top professors",
        );
  const PageContent.third()
      : this(
          image: MediaRes.studyLiterature,
          title: 'Easy to join the lesson',
          description:
              'This is the first online education platform designed by the '
              "world's top professors",
        );
  final String image;
  final String title;
  final String description;

  @override
  List<Object?> get props => [image, title, description];
}

import 'package:ar_location_viewer/ar_annotation.dart';

class Annotation extends ArAnnotation {
  final String name;
  final String description;
  final String image;

  Annotation({
    required super.uid,
    required super.position,
    required super.color,
    required this.name,
    required this.description,
    required this.image,
  });
}

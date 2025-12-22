import 'package:ar_location_viewer/ar_location_viewer.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:uuid/uuid.dart';

import 'annotation_viewer.dart';
import 'annotations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Annotation> annotations = [
    Annotation(
      uid: const Uuid().v4(),
      color: Colors.greenAccent,
      position: Position(
        latitude: 33.69331379405282,
        longitude: 73.06823228370203,
        timestamp: DateTime.now(),
        accuracy: 1,
        altitude: 1,
        heading: 1,
        speed: 1,
        speedAccuracy: 1,
        altitudeAccuracy: 0.0,
        headingAccuracy: 0.0,
      ),
      name: 'Pakistan Monument',
      description: 'Dedicated to national unity, this monument is shaped like blooming flower petals.',
      image: 'assets/pakistan_monument.webp',
    ),
    Annotation(
      uid: const Uuid().v4(),
      color: Colors.pink,
      position: Position(
        latitude: 33.707728665971935,
        longitude: 73.04979404534627,
        timestamp: DateTime.now(),
        accuracy: 1,
        altitude: 1,
        heading: 1,
        speed: 1,
        speedAccuracy: 1,
        altitudeAccuracy: 0.0,
        headingAccuracy: 0.0,
      ),
      name: 'Centaurus Mall',
      description: 'A large shopping complex with a variety of stores and restaurants.',
      image: 'assets/centaurus_mall.jpg',
    ),
    Annotation(
      uid: const Uuid().v4(),
      color: Colors.greenAccent,
      position: Position(
        latitude: 33.692539759980264,
        longitude: 73.069475283878,
        timestamp: DateTime.now(),
        accuracy: 1,
        altitude: 1,
        heading: 1,
        speed: 1,
        speedAccuracy: 1,
        altitudeAccuracy: 0.0,
        headingAccuracy: 0.0,
      ),
      name: 'Museum',
      description: 'A museum with a variety of exhibits and artifacts.',
      image: 'assets/museum.jpg',
    ),
    Annotation(
      uid: const Uuid().v4(),
      color: Colors.blueAccent,
      position: Position(
        latitude: 33.73289369575957,
        longitude: 73.08798919648717,
        timestamp: DateTime.now(),
        accuracy: 1,
        altitude: 1,
        heading: 1,
        speed: 1,
        speedAccuracy: 1,
        altitudeAccuracy: 0.0,
        headingAccuracy: 0.0,
      ),
      name: 'Marriott Hotel',
      description: 'A 5-star hotel with a variety of amenities and facilities.',
      image: 'assets/marriott_hotel.jpg',
    ),
    Annotation(
      uid: const Uuid().v4(),
      color: Colors.redAccent,
      position: Position(
        latitude: 33.70317735624549,
        longitude: 73.052235990117,
        timestamp: DateTime.now(),
        accuracy: 1,
        altitude: 1,
        heading: 1,
        speed: 1,
        speedAccuracy: 1,
        altitudeAccuracy: 0.0,
        headingAccuracy: 0.0,
      ),
      name: 'PIMS Hospital',
      description: 'A modern hospital with state-of-the-art facilities and equipment.',
      image: 'assets/pims_hospital.jpg',
    ),
    // Annotation(
    //   uid: const Uuid().v4(),
    //   color: Colors.greenAccent,
    //   position: Position(
    //     latitude: 33.57683490278335,
    //     longitude: 73.02931231409312,
    //     timestamp: DateTime.now(),
    //     accuracy: 1,
    //     altitude: 1,
    //     heading: 1,
    //     speed: 1,
    //     speedAccuracy: 1,
    //     altitudeAccuracy: 0.0,
    //     headingAccuracy: 0.0,
    //   ),
    //   name: 'Nisar Bakers',
    //   description: 'A bakery with a variety of fresh bread and pastries.',
    //   image: 'assets/centaurus_mall.jpg',
    // ),
    // Annotation(
    //   uid: const Uuid().v4(),
    //   color: Colors.pinkAccent,
    //   position: Position(
    //     latitude: 33.57689081001234,
    //     longitude: 73.02883173285045,
    //     timestamp: DateTime.now(),
    //     accuracy: 1,
    //     altitude: 1,
    //     heading: 1,
    //     speed: 1,
    //     speedAccuracy: 1,
    //     altitudeAccuracy: 0.0,
    //     headingAccuracy: 0.0,
    //   ),
    //   name: 'Hot & Tasty',
    //   description: 'A restaurant with a variety of fast food.',
    //   image: 'assets/marriott_hotel.jpg',
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ArLocationWidget(
          maxVisibleDistance: 5000,
          annotationHeight: 275,
          annotationWidth: 240,
          annotations: annotations,
          showDebugInfoSensor: false,
          markerColor: Colors.greenAccent,
          radarColor: Colors.green,
          annotationViewerBuilder: (context, annotation) {
            return AnnotationViewer(key: ValueKey(annotation.uid), annotation: annotation as Annotation);
          },
          onLocationChange: (Position position) {},
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'annotations.dart';

class AnnotationViewer extends StatelessWidget {
  const AnnotationViewer({super.key, required this.annotation});

  final Annotation annotation;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFF343434),
        border: Border.all(color: annotation.color),
        boxShadow: [BoxShadow(color: Colors.white.withAlpha(20), blurRadius: 4, offset: const Offset(0, 2))],
      ),
      child: IntrinsicHeight(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(annotation.image), fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          annotation.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '${annotation.distanceFromUser.toInt()} m',
                          style: TextStyle(fontSize: 12, color: Colors.white70),
                        ),
                        const SizedBox(height: 2),
                        Divider(color: Colors.white24),
                        const SizedBox(height: 2),
                        Text(
                          annotation.description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: Colors.white54),
                        ),
                      ],
                    ),
                    Flexible(
                      child: GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Center(child: Text('View Details of ${annotation.name} Tapped!'))),
                          );
                        },
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: const Text('View Details', style: TextStyle(color: Colors.white, fontSize: 12)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

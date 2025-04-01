import 'package:ebook_app/nation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Festival extends StatelessWidget {
  const Festival({super.key, required this.nation});

  final Nation nation;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          style: const TextStyle(fontSize: 16.0, color: Colors.black),
          children: [
            const TextSpan(text: '活動'),
            TextSpan(
              text: nation.festivals.join(','),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

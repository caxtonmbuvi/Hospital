import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ReadMore extends StatelessWidget {
  final String text;
  const ReadMore({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: 6,
      preDataTextStyle: const TextStyle(fontWeight: FontWeight.w500),
      style: const TextStyle(
        fontSize: 14.0,
        color: Colors.black
      ),
      colorClickableText: Colors.blue,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Read More',
      trimExpandedText: ' show less',
      textAlign: TextAlign.left,
    );
  }
}

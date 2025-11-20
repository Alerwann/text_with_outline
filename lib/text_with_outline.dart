import 'package:flutter/material.dart';

class TextWithOuline extends StatelessWidget {
  final String enterText;
  final Color colorContour;
  final Color colorInterior;
  final double strokeWidth;

  final TextStyle? style;

  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  const TextWithOuline({
    super.key,
    required this.enterText,
    required this.colorContour,
    required this.colorInterior,
    this.strokeWidth = 4,
    this.style,
    this.textAlign = TextAlign.center,
    this.overflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    final baseStyle = style ?? const TextStyle();
    return Stack(
      children: [
        Text(
          enterText,
          textAlign: textAlign,
          overflow: overflow,
          maxLines: maxLines,
          style: baseStyle.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = colorContour,
          ),
        ),
        Text(
          enterText,
          textAlign: textAlign,
          overflow: overflow,
          maxLines: maxLines,
          style: baseStyle.copyWith(color: colorInterior),
        ),
      ],
    );
  }
}

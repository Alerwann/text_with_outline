import 'package:flutter/material.dart';

/// A widget that displays text with a customizable contour (stroke) and interior color.
///
/// This widget allows you to apply a stroke effect to text while preserving
/// the ability to customize the interior style using a standard [TextStyle].
class TextWithOutline extends StatelessWidget {
  /// The text string to display.
  final String enterText;

  /// The color of the stroke (contour) around the text.
  final Color colorContour;

  /// The color of the interior (fill) of the text.
  final Color colorInterior;

  /// The width of the stroke in logical pixels. Defaults to 4.0.
  final double strokeWidth;

  /// The base style to apply to the text (font size, weight, letter spacing, etc.).
  ///
  /// The [color] property of this style will be ignored in favor of [colorInterior].
  final TextStyle? style;

  /// How the text should be aligned horizontally. Defaults to [TextAlign.center].
  final TextAlign? textAlign;

  /// How visual overflow should be handled.
  final TextOverflow? overflow;

  /// An optional maximum number of lines for the text to span, wrapping if necessary.
  final int? maxLines;

  /// Creates a [TextWithOutline] widget.
  const TextWithOutline({
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
        // The Stroke (Contour)
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
        // The Fill (Interior)
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

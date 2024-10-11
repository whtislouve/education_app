import 'package:flutter/material.dart';

class AvatarGradientArc extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path = Path();
    path.addArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2),
            radius: size.width / 2),
        3 * 3.14 / 2,
        3 * 3.14 / 2);

    final Paint paint = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color.fromRGBO(78, 116, 250, 1),
          Color.fromRGBO(0, 209, 255, 1),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

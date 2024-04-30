import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Triangle

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 1.0007583, size.height * -0.0014429);
    path_1.quadraticBezierTo(size.width * 0.2566583, size.height * -0.0027857,
        size.width * 0.0071417, size.height * -0.0028571);
    path_1.cubicTo(
        size.width * -0.1038167,
        size.height * -0.0447714,
        size.width * 0.9693083,
        size.height * 1.2163429,
        size.width * 1.0014083,
        size.height * 0.9981714);
    path_1.quadraticBezierTo(size.width * 0.9991000, size.height * 0.5908143,
        size.width * 1.0007583, size.height * -0.0014429);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

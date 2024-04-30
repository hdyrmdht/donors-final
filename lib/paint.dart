// import 'dart:ui' as ui;
//
// import 'package:flutter/material.dart';
//
// class Paintt extends StatelessWidget {
//   const Paintt({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           CustomPaint(
//             size: Size(
//                 300,
//                 (300 * 0.6)
//                     .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//             painter: RPSCustomPainter(),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
// // Layer 1
//
//     Paint paint_fill_0 = Paint()
//       ..color = const Color.fromARGB(220, 208, 144, 29)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;
//     paint_fill_0.shader = ui.Gradient.linear(
//         Offset(size.width * 0.60, size.height * 0.42),
//         Offset(size.width * 1.00, size.height * 0.42), [
//       Color(0xfff57222),
//       Color(0xff000000),
//       Color(0xff000000),
//       Color(0xffffffff)
//     ], [
//       0.00,
//       0.62,
//       0.95,
//       1.00
//     ]);
//
//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.6464000, size.height * 0.3250000);
//     path_0.cubicTo(
//         size.width * 0.8002000,
//         size.height * 0.1692500,
//         size.width * 0.8010000,
//         size.height * 0.1705833,
//         size.width * 0.9560000,
//         size.height * 0.3200000);
//     path_0.cubicTo(
//         size.width * 0.9996000,
//         size.height * 0.4147500,
//         size.width * 0.9980000,
//         size.height * 0.4162500,
//         size.width * 0.9512000,
//         size.height * 0.5016667);
//     path_0.cubicTo(
//         size.width * 0.8509500,
//         size.height * 0.6620833,
//         size.width * 0.6624500,
//         size.height * 0.5389167,
//         size.width * 0.6510000,
//         size.height * 0.4993333);
//     path_0.cubicTo(
//         size.width * 0.5990500,
//         size.height * 0.4174167,
//         size.width * 0.5986500,
//         size.height * 0.4170833,
//         size.width * 0.6464000,
//         size.height * 0.3250000);
//     path_0.close();
//
//     canvas.drawPath(path_0, paint_fill_0);
//
// // Layer 1
//
//     Paint paint_stroke_0 = Paint()
//       ..color = const Color.fromARGB(175, 221, 133, 14)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.02
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.bevel;
//     paint_stroke_0.shader = ui.Gradient.linear(
//         Offset(size.width * 0.60, size.height * 0.42),
//         Offset(size.width * 1.00, size.height * 0.42),
//         [Color(0xfff22608), Color(0xff000000), Color(0xffffffff)],
//         [0.00, 0.80, 1.00]);
//
//     canvas.drawPath(path_0, paint_stroke_0);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

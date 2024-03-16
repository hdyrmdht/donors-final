import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'RPS_custom_painter_login.dart';
import 'login_button_widgets.dart';

Widget rotateRectangle({required BuildContext context}) {
  return Expanded(
    child: Transform.rotate(
      angle: -math.pi / 1,
      child: SizedBox(
        height: MediaQuery.of(context).size. height * 0.3,
        width: MediaQuery.of(context).size. height * 0.6,
        child: CustomPaint(
          painter: RPSCustomPainter(),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 2, bottom: 2),
              child: IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          backgroundColor: Colors.white,
                          content:
                          AlertDialogUserOrHospital(),
                        );
                      });
                },
                icon: Icon(
                  Icons.arrow_circle_up_sharp,
                  size: 35,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../../../../../../share/styles_manager.dart';
import '../../../../login/presentation/view/widgets/RPS_custom_painter_login.dart';

Widget rotateRectangleRegister({
  required BuildContext context,
}) {
  return Transform.rotate(
    angle: -math.pi / 1,
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 1 ,
      child: CustomPaint(
        painter: RPSCustomPainter(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Transform.rotate(
                angle: -math.pi / 1,
                child: Text(
                  "REGISTER",
                  style: StyleHelper.textStyle16Regular(context)
                      .copyWith(color: Colors.black, fontSize: 40),
                ),
              ),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.topRight,
              child:  Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                    Icons.arrow_circle_up_sharp,
                    size: 35,
                    color: Colors.orange,
                  ),
              ),

            ),
          ],
        ),
      ),
    ),
  );
}

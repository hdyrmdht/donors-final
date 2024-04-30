import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../../../layout/home_layout.dart';
import '../../../login/pageroute.dart';

class PinFieldOtpScreen extends StatelessWidget {
  const PinFieldOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 45,
      child: PinFieldAutoFill(
        codeLength: 6,
        autoFocus: true,
        decoration: UnderlineDecoration(
          colorBuilder: FixedColorBuilder(Colors.green),
        ),
        cursor:
            Cursor(color: Colors.green, enabled: true, height: 30, width: 4),
        onCodeChanged: (value) {
          if (value!.length == 6) {
            Navigator.push(context, Fadetion(page: const HomeLayout()));
          }
        },
      ),
    );
  }
}

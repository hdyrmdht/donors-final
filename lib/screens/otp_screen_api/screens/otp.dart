import 'package:bloodbank_donors/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../login/pageroute.dart';
import '../widgets/otp_widgets/app_bar.dart';
import '../widgets/otp_widgets/pin_field.dart';
import '../widgets/otp_widgets/texts_phone_number.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  void initState() {
    _listenSmsCode();
    super.initState();
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    super.dispose();
  }

  _listenSmsCode() async {
    await SmsAutoFill().listenForCode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: appBarOtpScreen(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const TextsOtpScreen(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Text(
                "enter6DigitCode",
                style: TextStyle(color: Colors.white60),
              ),
            ),
            const PinFieldOtpScreen(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, Fadetion(page: const MyLogin()));
                    },
                    child: const Icon(
                      Icons.message,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    "resendSms",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const Spacer(),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 60.0, end: 0),
                    duration: const Duration(seconds: 60),
                    builder: (context, value, child) => Text(
                      '00:${value.toInt()}',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    onEnd: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

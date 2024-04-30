import 'package:flutter/material.dart';

class TextsOtpScreen extends StatefulWidget {
  const TextsOtpScreen({super.key});

  @override
  State<TextsOtpScreen> createState() => _TextsOtpScreenState();
}

class _TextsOtpScreenState extends State<TextsOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Text(
            "waitingToDetectSms",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\$+201125345129",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "wrongNumber",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

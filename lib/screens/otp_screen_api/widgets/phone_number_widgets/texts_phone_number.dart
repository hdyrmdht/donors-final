import 'package:flutter/material.dart';

class TextsPhoneNumber extends StatefulWidget {
  const TextsPhoneNumber({super.key});

  @override
  State<TextsPhoneNumber> createState() => _TextsPhoneNumberState();
}

class _TextsPhoneNumberState extends State<TextsPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Text(
          "App Will Need ",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "Your Number",
          style: TextStyle(
            color: Colors.green,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

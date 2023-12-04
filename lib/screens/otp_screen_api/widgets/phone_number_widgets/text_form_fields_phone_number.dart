import 'package:flutter/material.dart';

class TextFormFieldsPhoneNumber extends StatefulWidget {
  const TextFormFieldsPhoneNumber({super.key});

  @override
  State<TextFormFieldsPhoneNumber> createState() =>
      _TextFormFieldsPhoneNumberState();
}

class _TextFormFieldsPhoneNumberState extends State<TextFormFieldsPhoneNumber> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController countryCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: TextField(
            //enabled: false,
            readOnly: true,
            controller: countryCodeController,
            style: TextStyle(color: Colors.grey),
            decoration: InputDecoration(
              prefix: Container(
                margin: const EdgeInsets.only(right: 8),
                width: 58,
                alignment: Alignment.bottomLeft,
                child: Text(
                  '\${+ code}',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 14,
        ),
        Expanded(
          child: TextField(
            controller: phoneController,
            keyboardType: TextInputType.phone,
            cursorColor: Colors.grey,
            cursorHeight: 30,
            style: TextStyle(color: Colors.grey),
            decoration: const InputDecoration(
              hintText: "phoneNumber",
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
    countryCodeController.dispose();
  }
}

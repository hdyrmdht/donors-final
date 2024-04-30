import 'package:flutter/material.dart';

import '../widgets/phone_number_widgets/app_bar.dart';
import '../widgets/phone_number_widgets/next_button.dart';
import '../widgets/phone_number_widgets/show_country_picker.dart';
import '../widgets/phone_number_widgets/text_form_fields_phone_number.dart';
import '../widgets/phone_number_widgets/texts_phone_number.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorManager.grey200,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60), child: appBarPhoneNumber()),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextsPhoneNumber(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Column(
                children: [
                  ShowCountryPickerPhoneNumber(),
                  Divider(
                    height: 0,
                    thickness: 0.7,
                  ),
                  TextFormFieldsPhoneNumber(),
                ],
              ),
            ),
            const Spacer(),
            nextButtonPhoneNumber(context),
          ],
        ),
      ),
    );
  }
}

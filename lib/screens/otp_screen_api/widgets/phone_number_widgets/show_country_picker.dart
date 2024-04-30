import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class ShowCountryPickerPhoneNumber extends StatefulWidget {
  const ShowCountryPickerPhoneNumber({super.key});

  @override
  State<ShowCountryPickerPhoneNumber> createState() =>
      _ShowCountryPickerPhoneNumberState();
}

class _ShowCountryPickerPhoneNumberState
    extends State<ShowCountryPickerPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: InkWell(
              onTap: () {
                showCountryPicker(
                  context: context,
                  showPhoneCode: true,
                  onSelect: (myCountry) {
                    // cubit.setCountry(myCountry);
                    myCountry.phoneCode;
                    myCountry.displayNameNoCountryCode;
                    // cubit.country!.phoneCode;
                  },
                );
              },
              child: Text(
                "pickCountry",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ),
        ),
        const Icon(
          Icons.arrow_drop_down,
          color: Colors.black,
          size: 28,
        ),
      ],
    );
  }
}

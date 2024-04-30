import 'package:flutter/material.dart';
import 'package:searchbar_animation/const/colours.dart';

Widget DefaultDropdownMenuButton({
  required String value,
  required Text hint,
  required IconData icon,
  required bool isExpanded,
  required List<DropdownMenuItem<String>> listOfDropdownMenuItem,
  required void Function(dynamic)? onChange,
}) =>
    Padding(
      padding: const EdgeInsets.all(8),
      child: DropdownButton(
        isExpanded: isExpanded,
        value: value,
        hint: hint,
        items: listOfDropdownMenuItem,
        onChanged: onChange,
        underline: Container(),
        dropdownColor: AppColours.white,
        focusColor: AppColours.white,
        iconSize: 28,
        iconEnabledColor: AppColours.white,
        iconDisabledColor: AppColours.white,
        icon: Icon(
          icon,
          color: AppColours.grey,
          size: 28,
        ),
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        borderRadius: const BorderRadius.all(Radius.circular(28)),
        // elevation: 5,
        menuMaxHeight: 300,
      ),
    );

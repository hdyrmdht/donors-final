import 'package:flutter/material.dart';

import '../../style/colors.dart';

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
        dropdownColor: AppColors.white,
        focusColor: AppColors.white,
        iconSize: 28,
        iconEnabledColor: AppColors.white,
        iconDisabledColor: AppColors.white,
        icon: Icon(
          icon,
          color: AppColors.primary,
          size: 28,
        ),
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        borderRadius: const BorderRadius.all(Radius.circular(28)),
        // elevation: 5,
        menuMaxHeight: 300,
      ),
    );

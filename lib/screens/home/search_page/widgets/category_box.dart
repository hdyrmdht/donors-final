import 'package:bloodbank_donors/style/colors.dart';
import 'package:flutter/material.dart';


class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key, required this.isCurrent,
  });
  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 14.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
          color: isCurrent ? AppColors.primary : AppColors.white,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: AppColors.primary,
            style: BorderStyle.solid
          )
          ),
      child: FittedBox(
        alignment: Alignment.center,
          fit: BoxFit.contain,
          child: Text(
            "All",
            style: TextStyle(
              color: Colors.black54, fontSize: 12, fontWeight: FontWeight.w500),
          )),
    );
  }
}
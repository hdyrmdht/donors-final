import 'package:flutter/material.dart';

import '../../style/colors.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({
    Key? key,
    this.icon,
    required this.title,
    required this.imageOr,
    this.elevation,
    this.image,
  }) : super(key: key);

  final IconData? icon;
  final String title;
  final bool imageOr;
  final String? image;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: AppColors.primary,
        elevation: elevation ?? 8,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              imageOr
                  ? Expanded(
                      child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            image!,
                            fit: BoxFit.contain,
                          )))
                  : Icon(icon, size: 40, color: AppColors.white),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(title,
                    style: TextStyle(color: AppColors.white, fontSize: 16)),
              ),
            ]));
  }
}

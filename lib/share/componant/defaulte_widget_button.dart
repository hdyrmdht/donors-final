import 'package:flutter/material.dart';

class DefaultWidgetButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback onPress;
  final double? height;
  final Color? color;
  final double valueBorder;
  const DefaultWidgetButton(
      {super.key,
      required this.widget,
      required this.onPress,
      this.height,
      this.color,
      required this.valueBorder});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(valueBorder) ??
            BorderRadius.circular(0.0), // تعيين نصف قطر الزاوية المستديرة هنا
      ),
      color: color,
      onPressed: onPress,
      height: height,
      elevation: 4,
      minWidth: 40,
      child: widget,
    );
  }
}

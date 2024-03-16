import 'package:flutter/material.dart';


abstract class StyleHelper {
  static TextStyle textStyle12Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    );
  }

  static TextStyle textStyle14Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    );
  }

  static TextStyle textStyle16Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: Colors.blue,
    );
  }

  static TextStyle textStyle16Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: Colors.blue,
    );
  }

  static TextStyle textStyle16SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: Colors.blue,
    );
  }

  static TextStyle textStyle18SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: Colors.blue,
    );
  }

  static TextStyle textStyle16Bold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      color: Colors.blue,
    );
  }

  static TextStyle textStyle20Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: Colors.white,
    );
  }

  static TextStyle textStyle20SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: Colors.blue,
    );
  }

  static TextStyle textStyle24SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: Colors.lightBlueAccent,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = calculateScaleFactor(context);
  double responsiveSize = fontSize * scaleFactor;
  return responsiveSize.clamp(fontSize * 0.8, fontSize * 1.2);
}

//fittedBox
//aspectRation
//layoutbuilder
double calculateScaleFactor(BuildContext context) {
  double layoutWidth = MediaQuery.sizeOf(context).width;
    return layoutWidth / 550;

}

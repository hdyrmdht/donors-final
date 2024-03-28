import 'package:bloodbank_donors/share/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

void showToast({
  required BuildContext context,
  required String text,
  required Color colorText,
  required Color colorIcon,
  required ToastStates toastState,
}) =>
    showSimpleNotification(
        Text(
          text,
          style: StyleHelper.textStyle14Regular(context, color: colorText),
        ),
        position: NotificationPosition.bottom,
        leading: Icon(
          Icons.tag_faces_rounded,
          color: colorIcon,
        ),
        autoDismiss: true,
        slideDismissDirection: DismissDirection.horizontal,
        background: toastColor(toastState));

enum ToastStates { SUCCECC, ERROR, WARNING }

Color toastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCECC:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.yellow;
      break;
  }
  return color;
}

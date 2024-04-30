import 'package:flutter/material.dart';

import '../../../login/pageroute.dart';
import '../../screens/otp.dart';

Widget nextButtonPhoneNumber(context) => DefaultButton(
      text: "next",
      color: Colors.green,
      onPress: () {
        AppDialogs.submitPhoneDialog(
          context: context,
          phoneNumber: '\$ + {code} {phoneController.text}',
          okPressed: () {
            Navigator.push(context, Fadetion(page: const OtpScreen()));
          },
        );
      },
    );

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final double? width;
  final Color color;
  const DefaultButton({
    super.key,
    required this.text,
    required this.onPress,
    this.width,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: onPress,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class AppDialogs {
  static Future<void> permissionDialog(
    BuildContext context, {
    required VoidCallback onContinuePressed,
    required String contentText,
  }) {
    return showMyDialog(
      context: context,
      contentPadding: EdgeInsets.zero,
      borderRadius: 8,
      content: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              //color: AppColors.primary,
              color: Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: const Icon(
              Icons.phone,
              color: Colors.white,
              size: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 28,
            ),
            child: Text(contentText,
                //style: Theme.of(context).textTheme.bodyLarge,
                style: TextStyle(color: Colors.grey)),
          )
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: const Text(
            'Not Now',
          ),
          onPressed: () {
            // navigatePop(context);
          },
        ),
        TextButton(
          onPressed: onContinuePressed,
          child: const Text(
            'Continue',
          ),
        ),
      ],
    );
  }

  static Future<void> submitPhoneDialog({
    required BuildContext context,
    required String phoneNumber,
    required VoidCallback okPressed,
  }) {
    return showMyDialog(
      context: context,
      actionSpacer: true,
      borderRadius: 3,
      contentPadding: const EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("You Entered The Phone Num"),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Text(
              phoneNumber,
              style: TextStyle(color: Colors.green),
            ),
          ),
          const Text("isThisOk"),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            "edit",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          onPressed: okPressed,
          child: Text(
            "ok",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

Future<void> showMyDialog({
  required BuildContext context,
  double borderRadius = 0,
  required Widget content,
  required List<Widget> actions,
  bool actionSpacer = false,
  EdgeInsetsGeometry? contentPadding,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: contentPadding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        content: SingleChildScrollView(
          child: content,
        ),
        actions: actions,
        actionsAlignment: actionSpacer
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.end,
      );
    },
  );
}


import 'package:bloodbank_donors/screens/auth/register/presentation/view/widgets/register_button_icon_widgets.dart';
import 'package:bloodbank_donors/screens/auth/register/presentation/view/widgets/rotate_rectangle_register.dart';
import 'package:flutter/material.dart';

import 'form_of_fields_register.dart';

Widget formRegister(
  BuildContext context, {
  required formKey,
  required emailController,
  required nameController,
  required businessIdController,
  required roleController,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 30.0, bottom: 20.0, right: 30.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        registerIconWidget(context: context),
        rotateRectangleRegister(context: context),
        formOfFieldsRegister(
          context: context,
          formKey: formKey,
          emailController: emailController,
          nameController: nameController,
          businessIdController: businessIdController,
          roleController: roleController,
        ),
      ],
    ),
  );
}

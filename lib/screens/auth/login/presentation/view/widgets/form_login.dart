
import 'package:bloodbank_donors/screens/auth/login/presentation/view/widgets/rotate_rectangle.dart';
import 'package:flutter/material.dart';

import 'form_of_fields_login.dart';
import 'login_button_widgets.dart';

Widget formLogin(
  BuildContext context, {
  required formKey,
  required  emailController,
  required  passwordController,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 30.0, top: 80.0, right: 30.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        formOfFieldsLogin(
            context: context,
            emailController: emailController,
            formKey: formKey,
            passwordController: passwordController),
        loginButtonWidget(context: context,
        email: emailController,
          password: passwordController
        ),
        rotateRectangle(context: context)
      ],
    ),
  );
}

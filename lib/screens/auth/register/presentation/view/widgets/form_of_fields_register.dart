
import 'package:flutter/material.dart';
import 'package:bloodbank_donors/screens/auth/register/presentation/view/widgets/register_button_icon_widgets.dart';
import 'package:bloodbank_donors/screens/auth/register/presentation/view_model/managers/cubit/cubit.dart';

import '../../../../../../share/componant/text_from_field_widget.dart';

Widget formOfFieldsRegister({
  required BuildContext context,
  required formKey,
  required emailController,
  required nameController,
  required phoneController,
  required addressController,
  required birthdayController,
  required bloodTypeController,
  required passwordController,
  required isUserOrNot,
}) {
  return Container(
    height: MediaQuery.of(context).size. height * 0.66,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(25),
        bottomLeft: Radius.circular(25),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children:
                  [
                    const SizedBox(
                      height: 5.0,
                    ),        defaultFormField(
                    context: context,
                    controller: emailController,
                    hintText: 'email',
                    labelText: "email",
                    suffixIcon: Icons.email,
                    colorSuffixIcon: Colors.grey,
                    type: TextInputType.emailAddress,
                    submit: (value) {
                      // if (formKey.currentState!.validate()) {}
                    },
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'email must not be empty';
                      }

                      return null;
                    },
                  ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    defaultFormField(
                      context: context,
                      controller: nameController,
                      hintText: 'name',
                      labelText: "name",
                      suffixIcon: Icons.person,
                      colorSuffixIcon: Colors.grey,
                      type: TextInputType.text,
                      submit: (value) {
                        if (formKey.currentState!.validate()) {}
                      },
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'name must not be empty';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    defaultFormField(
                      context: context,
                      controller: phoneController,
                      hintText: 'phone',
                      labelText: "phone",
                      suffixIcon: Icons.phone,
                      colorSuffixIcon: Colors.grey,
                      type: TextInputType.text,
                      submit: (value) {
                        if (formKey.currentState!.validate()) {}
                      },
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'phone must not be empty';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    defaultFormField(
                      context: context,
                      controller: addressController,
                      hintText: 'address',
                      labelText: "address",
                      suffixIcon: Icons.home,
                      colorSuffixIcon: Colors.grey,
                      type: TextInputType.text,
                      submit: (value) {
                        if (formKey.currentState!.validate()) {}
                      },
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'address must not be empty';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    if (isUserOrNot=="user")
                      defaultFormField(
                      context: context,
                      controller: birthdayController,
                      hintText: '2024-02-08',
                      labelText: "birthday",
                      suffixIcon: Icons.share_arrival_time,
                      colorSuffixIcon: Colors.grey,
                      type: TextInputType.text,
                      submit: (value) {
                        if (formKey.currentState!.validate()) {}
                      },
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'birthday must not be empty'
                              'look like 2024-02-08';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),const SizedBox(
                    height: 10.0,
                  ),
                    if (isUserOrNot=="user")
                      defaultFormField(
                      context: context,
                      controller: bloodTypeController,
                      hintText: 'blood_type',
                      labelText: "blood_type",
                      suffixIcon: Icons.bloodtype,
                      colorSuffixIcon: Colors.grey,
                      type: TextInputType.text,
                      submit: (value) {
                        if (formKey.currentState!.validate()) {}
                      },
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'blood_type must not be empty';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    defaultFormField(
                      context: context,
                      controller: passwordController,
                      hintText: 'password',
                      labelText: "password",
                      suffixIcon: Icons.visibility_off,
                      suffixPressd: (){
                        RegisterCubit.get(context).changePasswordVisibility();
                      },
                      colorSuffixIcon: Colors.grey,
                      type: TextInputType.text,
                      submit: (value) {
                        if (formKey.currentState!.validate()) {}
                      },
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'password must not be empty';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),

                    ]
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                registerButtonWidget(context: context,
                  emailController: emailController,
                  nameController: nameController,
                  phoneController : phoneController,
                  addressController : addressController,
                  birthdayController : birthdayController,
                  bloodTypeController : bloodTypeController,
                  passwordController : passwordController,
                    isUserOrNot:isUserOrNot,
                  formKey: formKey
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

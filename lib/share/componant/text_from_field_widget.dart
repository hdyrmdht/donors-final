import 'package:flutter/material.dart';

import '../../style/colors.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function()? suffixPressd,
  Function()? taped,
  String? Function(String?)? validate,
  bool isPassword = false,
  String? Function(String?)? submit,
  String? Function(String?)? change,
  IconData? suffixIcon,
  String? hintText,
  labelText,
  IconData? prefix,
  Color? fillsColor,
  bool? readOnly,
  BorderRadius? border,
  int? flex,
  required BuildContext context,
  colorSuffixIcon,
}) =>
    Expanded(
      flex: flex ?? 1,
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: type,
        controller: controller,
        obscureText: isPassword,
        onFieldSubmitted: (s) {
          submit!(s);
        },
        validator: validate,
        onChanged: change,
        onTap: taped,
        readOnly: readOnly ?? false,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.4),

            // تغيير لون الـ hint إلى اللون الأزرق
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: AppColors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: border ?? BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.primary),
          ),
          filled: true,
          fillColor: fillsColor ?? AppColors.grey100,
          prefixIcon: prefix != null ? Icon(prefix) : null,
          hintText: hintText,
          suffixIcon: suffixIcon != null
              ? SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (suffixIcon != null)
                        Container(
                          height: 20,
                          width: 1.5,
                          color: AppColors.white,
                        ),
                      if (suffixIcon != null)
                        const SizedBox(
                          width: 20,
                        ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.1,
                        child: IconButton(
                          onPressed: () {
                            suffixPressd!();
                          },

                          //1+1=1
                          icon: Icon(
                            suffixIcon,
                            size: 20,
                            color: colorSuffixIcon ?? AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : null,
          labelText: labelText,
          border: const OutlineInputBorder(),
        ),
      ),
    );

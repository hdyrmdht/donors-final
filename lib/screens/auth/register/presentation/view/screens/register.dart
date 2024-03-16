
import 'package:bloodbank_donors/screens/auth/register/presentation/view_model/managers/cubit/cubit.dart';
import 'package:bloodbank_donors/screens/auth/register/presentation/view_model/managers/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../login/presentation/view/widgets/background_for_login_and_register.dart';
import '../widgets/form_register.dart';


class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var businessIdController = TextEditingController();
  var roleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.grey[200],
            body: Stack(
              children: [
                backgroundForLoginAndRegister(context),
                formRegister(
                  context,
                  formKey: formKey,
                  emailController: emailController,
                  nameController: nameController,
                  businessIdController: businessIdController,
                  roleController: roleController,
                ),
              ],
            ),
          );
        });
  }
}

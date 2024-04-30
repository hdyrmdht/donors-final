// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../share/componant/text_from_field_widget.dart';
import '../../style/colors.dart';

class AddPostbtnSheet extends StatefulWidget {
  const AddPostbtnSheet({super.key});

  @override
  State<AddPostbtnSheet> createState() => _AddPostbtnSheetState();
}

class _AddPostbtnSheetState extends State<AddPostbtnSheet> {
  var decController = TextEditingController();
  var longtitudeController = TextEditingController();
  var ageController = TextEditingController();
  var latitudeController = TextEditingController();
  var idController = TextEditingController();
  var useridController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  String dropdownvalue = 'A-';

  // List of items in our dropdown menu
  var items = ['A-', 'A+', 'B+' ,'B-', 'O+', 'O-', 'AB+', 'AB-'];


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
              padding: const EdgeInsets.only(top: 22.0, right: 10, left: 10),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 65,
                          width: 90,
                          child: MaterialButton(
                            color: AppColors.primary,
                            padding: EdgeInsets.all(20),
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            onPressed: () {},
                            child: Center(
                                child: Text(
                              "نشر",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.grey30,
                                  fontWeight: FontWeight.w300),
                            )),
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              "إنشاء منشور",
                              style: TextStyle(
                                  fontSize: 20, color: AppColors.primary60),
                            ),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: const Text(
                              "post your advertise",
                              style: TextStyle(color: Colors.red, fontSize: 33),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          defaultFormField(
                            controller: idController,
                            hintText: 'id',
                            labelText: 'id',
                            context: context,
                            type: TextInputType.phone,
                            prefix: Icons.account_box,
                            validate: (String? value) {
                              if (value!.isEmpty) {
                                return 'id must not be empty';
                              }

                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          defaultFormField(
                            controller: useridController,
                            hintText: 'userid',
                            labelText: 'userid',
                            context: context,
                            type: TextInputType.phone,
                            prefix: Icons.person,
                            validate: (String? value) {
                              if (value!.isEmpty) {
                                return 'userid must not be empty';
                              }

                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          defaultFormField(
                            controller: decController,
                            hintText: 'description',
                            labelText: 'description',
                            context: context,
                            type: TextInputType.text,
                            prefix: Icons.description,
                            validate: (String? value) {
                              if (value!.isEmpty) {
                                return 'description prefer  not to be empty';
                              }

                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Container(decoration: BoxDecoration(
                              border:Border.all( color: AppColors.primary,),
                            ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DropdownButton<String>(

                                    // Initial Value
                                    value: dropdownvalue,

                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down),

                                    // Array list of items
                                    items: items.map<DropdownMenuItem<String>>((String items) {
                                      return DropdownMenuItem<String>(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          defaultFormField(
                            controller: longtitudeController,
                            hintText: 'longtitude',
                            labelText: 'longtitude',
                            context: context,
                            type: TextInputType.text,
                            prefix: Icons.location_city,
                            validate: (String? value) {
                              if (value!.isEmpty) {
                                return 'description prefer  not to be empty';
                              }

                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          defaultFormField(
                            controller: latitudeController,
                            hintText: 'description',
                            labelText: 'description',
                            context: context,
                            type: TextInputType.text,
                            prefix: Icons.description,
                            validate: (String? value) {
                              if (value!.isEmpty) {
                                return 'description prefer  not to be empty';
                              }

                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ]))),
        ),
      ],
    );
  }
}

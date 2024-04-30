// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';
import 'dart:io';

import 'package:bloodbank_donors/screens/profile/data/image_picker.dart';
import 'package:bloodbank_donors/screens/profile/presentation/view/widget/profilecomponant.dart';
import 'package:bloodbank_donors/screens/profile/presentation/view_model/managers/cubit/states.dart';
import 'package:bloodbank_donors/share/componant/cache_helper.dart';
import 'package:bloodbank_donors/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/managers/cubit/cubit.dart';

// ignore: use_key_in_widget_constructors
class ProfileScreen extends StatefulWidget {
  static const String routeName = "profile";

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? pickedImage;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserData();
  }

  void getUserData() async {
    await context
        .read<UserProfileCubit>()
        .getUserProfile(CacheHelper.getShared(key: 'token'));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserProfileCubit, UserProfileStates>(
      listener: (context, state) {
        if (state is UserProfileSuccessState) {}
      },
      builder: (context, state) {
        if (state is UserProfileLoadingState) {
          return Center(child: CircularProgressIndicator());
        } else if (state is UserProfileErrorState) {
          return Center(child: Text(state.error));
        } else if (state is UserProfileSuccessState) {
          return Scaffold(
            appBar: AppBar(
              title: Text("My Profile"),
              backgroundColor: AppColors.primary,
              iconTheme: IconThemeData(color: Colors.black),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: AppColors.primary30,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Donor",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19)),
                                SizedBox(width: 10),
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 70,
                                      backgroundColor: Colors.grey,
                                      backgroundImage: pickedImage == null
                                          ? null
                                          : FileImage(pickedImage!),
                                      child: pickedImage == null
                                          ? Icon(Icons.person, size: 80)
                                          : null,
                                    ),
                                    Container(
                                      height: 135,
                                      width: 140,
                                      alignment: Alignment.bottomCenter,
                                      child: InkWell(
                                        onTap: () {
                                          dialog();
                                        },
                                        child: Icon(Icons.camera_alt_outlined),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "bloodtype",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    Text(
                                      " A -",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 19),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    Text("Available For\n Donation",
                                        style: TextStyle(fontSize: 13)),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.access_time),
                                    Text(
                                      "Last Time\n For donation",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.favorite),
                                    Text("Health status"),
                                  ],
                                ),
                              ],
                            ),
                          ]),
                    ),
                    detailswidget(
                        Icons.person, "Name : ${state.profileResponse.name}"),
                    detailswidget(Icons.location_on,
                        "Location :${state.profileResponse.address}"),
                    detailswidget(Icons.phone,
                        "PhoneNumber : ${state.profileResponse.phone}"),
                    detailswidget(Icons.person,
                        "Gender : ${state.profileResponse.gender}"),
                    detailswidget(Icons.calendar_today_rounded,
                        "Age : ${state.profileResponse.birthday}"),
                    MaterialButton(
                      color: Colors.redAccent,
                      padding: EdgeInsets.all(20),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.transparent)),
                      onPressed: () {
                      },
                      child: Text("Edit"),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return Text("Undfined error");
        }
      },
    );
  }

  dialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () async {
                        File? temp = await ImageFunctions.cameraPicker();
                        if (temp != null) {
                          pickedImage = temp;
                        }
                        setState(() {});
                      },
                      icon: Icon(Icons.camera_alt_outlined)),
                  Text("Camera"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () async {
                        File? temp = await ImageFunctions.galleryPicker();
                        if (temp != null) {
                          pickedImage = temp;
                        }
                        setState(() {});
                      },
                      icon: Icon(Icons.photo)),
                  Text("Gallery"),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}



/* Scaffold(
          
          appBar: AppBar(
            title: Text("My Profile"),
            backgroundColor: AppColors.primary,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.primary30,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Donor",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19)),
                              SizedBox(width: 10),
                              Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 70,
                                    backgroundColor: Colors.grey,
                                    backgroundImage: pickedImage == null
                                        ? null
                                        : FileImage(pickedImage!),
                                    child: pickedImage == null
                                        ? Icon(Icons.person, size: 80)
                                        : null,
                                  ),
                                  Container(
                                    height: 135,
                                    width: 140,
                                    alignment: Alignment.bottomCenter,
                                    child: InkWell(
                                      onTap: () {
                                        dialog();
                                      },
                                      child: Icon(Icons.camera_alt_outlined),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "bloodtype",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  Text(
                                    " A -",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.calendar_today_outlined),
                                  Text("Available For\n Donation",
                                      style: TextStyle(fontSize: 13)),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.access_time),
                                  Text(
                                    "Last Time\n For donation",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.favorite),
                                  Text("Health status"),
                                ],
                              ),
                            ],
                          ),
                        ]),
                  ),
                  detailswidget(Icons.person, "Name : Sara"),
                  detailswidget(Icons.location_on, "Location :cairo"),
                  detailswidget(Icons.phone, "PhoneNumber : 0111234444"),
                  detailswidget(Icons.person, "Gender : Female"),
                  detailswidget(Icons.calendar_today_rounded, "Age : 21"),
                  MaterialButton(
                    color: Colors.redAccent,
                    padding: EdgeInsets.all(20),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.transparent)),
                    onPressed: () {},
                    child: Text("Edit"),
                  ),
                ],
              ),
            ),
          ),
        );

        */

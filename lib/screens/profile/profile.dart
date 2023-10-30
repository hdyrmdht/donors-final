import 'dart:io';

import 'package:bloodbank_donors/models/image_picker.dart';
import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class ProfileScreen extends StatefulWidget {
  static const String routeName = "profile";

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("My Profile"),
        backgroundColor: Colors.redAccent,
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
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Donor" ,style: TextStyle(color: Colors.white ,fontSize: 20)),
                      SizedBox(width: 20),
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.grey,
                            backgroundImage: pickedImage == null ? null : FileImage(
                                pickedImage!),
                            child: pickedImage == null ? Icon(Icons.person, size: 80) :null,
                          ),
                          Container(
                            height: 135,
                            width: 140,
                            alignment: Alignment.bottomCenter,
                            child:
                            InkWell(
                              onTap: () {
                                dialog();
                              },
                              child: Icon(Icons.camera_alt_outlined),
                            ),
                          ),
                        ],

                      ),
                      SizedBox(width: 20,),
                      Text("bloodtype \n o-" ,style: TextStyle(color: Colors.white,fontSize: 20),)
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
                          Text("Available For\n Donation",style: TextStyle(color: Colors.white,fontSize: 20)),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.access_time),
                          Text("Last Time\n For donation"),
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
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Icon(Icons.person),
                    Text("Name : Sara"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Icon(Icons.location_on),
                    Text("Location : ......."),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Icon(Icons.phone),
                    Text("PhoneNumber : 0111234444"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Icon(Icons.person),
                    Text("Gender : Female"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Icon(Icons.calendar_today_rounded),
                    Text("Age : 21"),
                  ],
                ),
              ),

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
                      onPressed: () async{
                       File? temp =await ImageFunctions.cameraPicker();
                       if(temp != null){
                         pickedImage = temp ;
                       }
                       setState(() {

                       });
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
                      onPressed: () async{
                        File? temp =await ImageFunctions.galleryPicker();
                        if(temp != null){
                          pickedImage = temp ;
                        }
                        setState(() {

                        });

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

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:bloodbank_donors/style/colors.dart';
import 'package:flutter/material.dart';

class AddPostbtnSheet extends StatelessWidget {
  const AddPostbtnSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Image.asset( 
        "assets/images/background.png",
          fit: BoxFit.fill,
          width: double.infinity,height: double.infinity,
        ),
        Container( 
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(top: 22.0, right: 10, left: 10),
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    children: [
                     SizedBox(height: 65,width: 90,
                       child: MaterialButton(
                                     color:AppColors.primary,
                                     padding: EdgeInsets.all(20),
                                     shape: OutlineInputBorder(
                                         borderRadius: BorderRadius.circular(30),
                                         borderSide: BorderSide(color: Colors.transparent)),
                                     onPressed: () {},
                                     child: Center(child: Text("نشر",style: TextStyle(fontSize: 20,color: AppColors.grey30,fontWeight: FontWeight.w300),)),),
                     ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "إنشاء منشور",
                            style: TextStyle(fontSize: 20,color: AppColors.primary60),
                          ),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ],
                  ),SizedBox(height: 16,),
                  TextField(
                    maxLines: 15,
                    decoration: InputDecoration(
                        hintText: "اكتب منشورك !",
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:   AppColors.primary60))),
                  ),SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text("صوره او فديو"),
                    SizedBox(width: 7,),
                    Icon(Icons.picture_in_picture_outlined, color: AppColors.primary60)
                  ],),
                   Divider(thickness: 2,color: Colors.grey[300],),
                   Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text("موقع"),
                    SizedBox(width: 7,),
                    Icon(Icons.location_on,color:  AppColors.primary60 ,),
                  ],),
                 Divider(thickness: 2,color: Colors.grey[300],),
                  
                   Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text("كاميرا"),
                    SizedBox(width: 7,),
                    Icon(Icons.camera_alt, color: AppColors.primary60),
                    
                  ],), Divider(thickness: 2,color: Colors.grey[300],),
                   Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text("لون الخلفيه"),
                    SizedBox(width: 7,),
                    Icon(Icons.color_lens, color: AppColors.primary60),
                    
                  ],),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

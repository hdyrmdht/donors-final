// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class PostsItem extends StatelessWidget {
  const PostsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width *.2,
      height: MediaQuery.of(context).size.height *.4,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // 
                      Text("هدير مدحت",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.public,
                            size: 13,
                          ),SizedBox(width: 5,),
                          Text("منذ دقائق",
                              style: TextStyle(
                                fontSize: 12,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile_icon.png"),
                  maxRadius: 20,
                  backgroundColor: Colors.grey,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                " محتاج 4اكياس دم دم فصيله لعمليه قلب مفتوح كيس دم فريش"
                "  لحاله حرجه في نطاق القاهره للتواصل 01091247775",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.right,
              ),
            ),
            decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            width: MediaQuery.of(context).size.width *.9,
            height: MediaQuery.of(context).size.height *.2,
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 40,
                    child: Image(
                      image: AssetImage("assets/images/share.png"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 40,
                    child: Image(
                      image: AssetImage("assets/images/comment.png",),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 50,
                    child: Image(
                      image: AssetImage("assets/images/singleLike.png"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

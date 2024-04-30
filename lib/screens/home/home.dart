// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadeer_add/screens/home/cubit/home_cubit.dart';
import 'package:hadeer_add/screens/home/posts_item.dart';

import '../../style/colors.dart';
import 'addpost_bottomsheet.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homescreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<HomeCubit, HomeStates>(
          builder: (context, state) {
            var cubit = HomeCubit.get(context);
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        onclickaddpost();
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "اكتب منشورك",
                            style: TextStyle(
                              color: AppColors.grey60,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * .8,
                        height: 37,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primary),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                        child: ImageIcon(
                          AssetImage("assets/images/write.png"),
                          size: 50,
                          color: AppColors.primary,
                        )),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) => PostsItem(
                          homePostModel: cubit.allPosts[index],
                        ),
                        separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                        itemCount: cubit.allPosts.length,
                    )),
              ],
            );
          },
        ),
      ),
    );
  }

  onclickaddpost() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => AddPostbtnSheet(),
    );
  }
}

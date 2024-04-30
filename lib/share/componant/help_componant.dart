import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../../style/colors.dart';

class Helpcompnant extends StatelessWidget {
  const Helpcompnant({super.key, required this.txt, required this.function});
final String txt;
final Function() function;
  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                    txt,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: MaterialButton(
                      minWidth: 6,
                      onPressed: function,
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppColors.primary90,
                      ),
                    ),
                  ),
                ],
              );
  }
}
class Gesturebuton extends StatefulWidget {
   

   Gesturebuton({super.key, required this.txt});
  final String txt;
   

  @override
  State<Gesturebuton> createState() => _GesturebutonState();
}

class _GesturebutonState extends State<Gesturebuton> {
   bool ispressed = false;


  @override
  Widget build(BuildContext context) {
    
    return  GestureDetector(
                  onTap: 
                  () {
                    ispressed = !ispressed;
                    setState(() {});
                  },
                  child: Container(
                    height: 37,
                    width: 100,
                    decoration: BoxDecoration(
                        color: ispressed ? AppColors.primary : Colors.transparent,
                        border: Border.all(color: AppColors.grey30),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.txt,
                          style: TextStyle(
                            color: ispressed
                                ?  AppColors.white 
                                : AppColors.primary90,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
  }
}
class ExpandablePanelbutn extends StatelessWidget {
  const ExpandablePanelbutn({super.key, required this.txt1, required this.txt2, required this.widget,});
final String txt1;
final String txt2;
final Widget widget;

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color:AppColors.primary
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  )),
              child: ExpandablePanel(theme: ExpandableThemeData(bodyAlignment: ExpandablePanelBodyAlignment.right, )
                ,header: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                  txt1,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                collapsed: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                 
                    children: [
                      Text(
                       txt2,
                        style: TextStyle(
                          color: Color.fromARGB(221, 100, 98, 98),
                          fontSize: 13,
                        ),
                        softWrap: true,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,textAlign: TextAlign.right,
                      ),
                    
                    ],
                  ),
                ),
                expanded: widget,
              ),
            ),
          );
  }
}
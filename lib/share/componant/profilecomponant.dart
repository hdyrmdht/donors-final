// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class detailswidget extends StatelessWidget {
  const detailswidget(this.icon,this.txt);
final IconData icon;
final String txt;
  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Icon(icon),
                    Text(txt),
                  ],
                ),
              );
  }
}
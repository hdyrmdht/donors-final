import 'package:bloodbank_donors/style/colors.dart';
import 'package:flutter/material.dart';

import '../../layout/home_layout.dart';

class Settingsfields extends StatelessWidget {
  const Settingsfields(
      {super.key,
      required this.icon,
      required this.text,
      required this.function});

  final IconData icon;
  final String text;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
            ),
            child: Icon(
              icon,
              color: AppColors.primary60,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: MaterialButton(
              minWidth: 6,
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: AppColors.primary60,
              ),
              onPressed: function),
        ),
      ],
    );
  }
}

showbutnheet(BuildContext context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadiusDirectional.vertical(top: Radius.circular(30))),
    context: context,
    builder: (context) => SingleChildScrollView(
      child: Container(
        width: 300,
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.login_rounded,
              color: AppColors.primary,
              size: 35,
            ),
            SizedBox(
              height: 30,
            ),
            Text('Are you sure you want to logout?'),
            SizedBox(
              height: 35,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    )),
                child: Material(
                  elevation: 5,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: 150,
                    height: 42,
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Material(
                elevation: 5,
                color: AppColors.primary60,
                borderRadius: BorderRadius.circular(25),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeLayout()));
                  },
                  minWidth: 150,
                  height: 42,
                  child: Text(
                    'Yes, Logout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    ),
  );
}

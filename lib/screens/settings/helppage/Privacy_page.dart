import 'package:flutter/material.dart';

import '../../../style/colors.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({super.key});

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Image.asset( 
        "assets/images/background.png",
          fit: BoxFit.fill,
          width: double.infinity,height: double.infinity,
        ),
    
        Scaffold(backgroundColor: Colors.transparent,
          
          appBar: AppBar(backgroundColor: AppColors.primary,
              title: Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(children: [
              SizedBox(
                height: 13,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/privacy.jpg',
                      width: 400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
            ]))),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../style/colors.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  // ignore: unused_field
  final _SignUp = GlobalKey<FormState>();

  final passController = TextEditingController();
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
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
            title:   Text(
                        'Contact US',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                      
          ),
          body: SingleChildScrollView(
              child: Column(children: [
          
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Row(
                children: [
                  Text('FullName'),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: 320,
              child: TextField(
                keyboardType: TextInputType.text,
                controller: fullnameController,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Full name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Row(
                children: [
                  Text('Email'),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: 320,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( 
                    'Message',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      'Max 250 words',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              
              height: 130,
              width: 320,
              child: TextField(
              maxLines: 15,
                maxLength: 250,
                keyboardType: TextInputType.text,
                controller: messageController,
                decoration: InputDecoration(
                 // contentPadding: EdgeInsets.only(bottom: 110, top: 0.0),
                  isDense: true,
                  hintText: 'message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Material(
                elevation: 5,
                color:AppColors.primary,
                borderRadius: BorderRadius.circular(25),
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: 200,
                  height: 42,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Send message',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.send, size: 18, color: Colors.white)
                    ],
                  ),
                ),
              ),
            ),
          ])),
        ),
      ],
    );
  }
}

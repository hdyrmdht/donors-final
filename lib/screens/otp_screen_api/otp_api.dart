// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:lamusic/core/utils/colors.dart';
// import 'package:lamusic/core/utils/styles.dart';
// import 'package:lamusic/features/register_login/presentation/view/auth/auth.dart';
// import 'package:lamusic/features/register_login/presentation/view_model/managers/provider/music_provider.dart';
// import 'package:provider/provider.dart';
//
// import '../../../../home/presentation/view/home.dart';
// import '../../view_model/managers/provider/internet_provider.dart';
//
// class PhoneAuthScreen extends StatefulWidget {
//   const PhoneAuthScreen({Key? key}) : super(key: key);
//
//   @override
//   State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
// }
//
// class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
//   final formKey = GlobalKey<FormState>();
//
//   // controller -> phone, email, name, otp code
//   TextEditingController phoneController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController otpCodeController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorsApp.scaffoldColorDark,
//       appBar: AppBar(
//         backgroundColor: ColorsApp.appBarColorDark,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back_ios,
//             color: ColorsApp.whiteColor,
//           ),
//           onPressed: () {
//             Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (context) => AuthPage()));
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(20),
//           child: Form(
//             key: formKey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Icon(
//                   Icons.person,
//                   size: 100,
//                   color: ColorsApp.orangeColor,
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   "Phone Login",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return "Name cannot be empty";
//                     }
//                     return null;
//                   },
//                   controller: nameController,
//                   textInputAction: TextInputAction.next,
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(
//                       Icons.account_circle,
//                       color: ColorsApp.orangeColor,
//                     ),
//                     fillColor: Colors.orange[100],
//                     filled: true,
//                     hintText: "mahmoud ahmed",
//                     hintStyle: TextStyle(color: Colors.grey[600]),
//                     errorBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: const BorderSide(color: Colors.red)),
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide:
//                             BorderSide(color: ColorsApp.orangeColor, width: 3)),
//                     enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: BorderSide(color: ColorsApp.whiteColor)),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return "Email address cannot be empty";
//                     }
//                     return null;
//                   },
//                   controller: emailController,
//                   textInputAction: TextInputAction.next,
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(
//                       Icons.email,
//                       color: ColorsApp.orangeColor,
//                     ),
//                     hintText: "mahmoud176@gmail.com",
//                     fillColor: Colors.orange[100],
//                     filled: true,
//                     hintStyle: TextStyle(color: Colors.grey[600]),
//                     errorBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: const BorderSide(color: Colors.red)),
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide:
//                             BorderSide(color: ColorsApp.orangeColor, width: 3)),
//                     enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: BorderSide(color: ColorsApp.whiteColor)),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return "Phone Number cannot be empty";
//                     }
//                     return null;
//                   },
//                   controller: phoneController,
//                   textInputAction: TextInputAction.done,
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(
//                       Icons.phone,
//                       color: ColorsApp.orangeColor,
//                     ),
//                     hintText: "+20  1125345129",
//                     hintStyle: TextStyle(color: Colors.grey[600]),
//                     fillColor: Colors.orange[100],
//                     filled: true,
//                     errorBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: const BorderSide(color: Colors.red)),
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide:
//                             BorderSide(color: ColorsApp.orangeColor, width: 3)),
//                     enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: BorderSide(color: ColorsApp.whiteColor)),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       color: ColorsApp.orangeColor,
//                       borderRadius: BorderRadius.circular(30)),
//                   child: TextButton(
//                     onPressed: () {
//                       login(context, phoneController.text.trim());
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         "Register",
//                         style: Styles.textStyle20.copyWith(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void openSnackbar(context, snackMessage, color) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         backgroundColor: color,
//         action: SnackBarAction(
//           label: "OK",
//           textColor: Colors.white,
//           onPressed: () {},
//         ),
//         content: Text(
//           snackMessage,
//           style: const TextStyle(fontSize: 14),
//         )));
//   }
//
//   Future login(BuildContext context, String mobile) async {
//     final sp = context.read<MusicProvider>();
//     final ip = context.read<InternetProvider>();
//     await ip.checkInternetConnection();
//
//     if (ip.hasInternet == false) {
//       openSnackbar(context, "Check your internet connection", Colors.red);
//     } else {
//       if (formKey.currentState!.validate()) {
//         FirebaseAuth.instance.verifyPhoneNumber(
//             phoneNumber: mobile,
//             verificationCompleted: (AuthCredential credential) async {
//               await FirebaseAuth.instance.signInWithCredential(credential);
//             },
//             verificationFailed: (FirebaseAuthException e) {
//               openSnackbar(context, e.toString(), Colors.red);
//             },
//             codeSent: (String verificationId, int? forceResendingToken) {
//               showDialog(
//                   barrierDismissible: false,
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       title: const Text("Enter Code"),
//                       content: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           TextField(
//                             controller: otpCodeController,
//                             decoration: InputDecoration(
//                                 prefixIcon: const Icon(Icons.code),
//                                 errorBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(8),
//                                     borderSide:
//                                         const BorderSide(color: Colors.red)),
//                                 enabledBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(8),
//                                     borderSide:
//                                         const BorderSide(color: Colors.grey)),
//                                 focusedBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(8),
//                                     borderSide:
//                                         const BorderSide(color: Colors.grey))),
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                                 backgroundColor: ColorsApp.orangeColor),
//                             onPressed: () async {
//                               final code = otpCodeController.text.trim();
//                               AuthCredential authCredential =
//                                   PhoneAuthProvider.credential(
//                                       verificationId: verificationId,
//                                       smsCode: code);
//                               User user = (await FirebaseAuth.instance
//                                       .signInWithCredential(authCredential))
//                                   .user!;
//                               // save the values
//                               sp.phoneNumberUser(user, emailController.text,
//                                   nameController.text);
//                               // checking whether user exists,
//                               sp.checkUserExists().then((value) async {
//                                 if (value == true) {
//                                   // user exists
//                                   await sp
//                                       .getUserDataFromFirestore(sp.uid)
//                                       .then((value) => sp
//                                           .saveDataToSharedPreferences()
//                                           .then((value) =>
//                                               sp.setSignIn().then((value) {
//                                                 Navigator.pushReplacement(
//                                                     context,
//                                                     MaterialPageRoute(
//                                                         builder: (context) =>
//                                                             Home()));
//                                               })));
//                                 } else {
//                                   // user does not exist
//                                   await sp.saveDataToFirestore().then((value) =>
//                                       sp.saveDataToSharedPreferences().then(
//                                           (value) =>
//                                               sp.setSignIn().then((value) {
//                                                 Navigator.pushReplacement(
//                                                     context,
//                                                     MaterialPageRoute(
//                                                         builder: (context) =>
//                                                             Home()));
//                                               })));
//                                 }
//                               });
//                             },
//                             child: const Text(
//                               "Confirm And Wait",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           )
//                         ],
//                       ),
//                     );
//                   });
//             },
//             codeAutoRetrievalTimeout: (String verification) {});
//       }
//     }
//   }
// }

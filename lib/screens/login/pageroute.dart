import 'package:flutter/cupertino.dart';
//
// class Slide extends PageRouteBuilder {
//   final page;
//
//   Slide({this.page})
//       : super(
//           transitionsBuilder: (context, animation, animationtwo, child)
//           {
//             var begin=const Offset(0.0,-1.0);
//             var end=Offset.zero;
//             var tween=Tween(begin: begin,end: end,);
//             var offsetAnimation=animation.drive(tween);
//             return SlideTransition(position: offsetAnimation,child: child,);
//
//           },
//           pageBuilder: (context, animation, animationtwo) => page,
//         );
// }



//
// class Slide extends PageRouteBuilder {
//   final page;
//
//   Slide({this.page})
//       : super(
//           transitionsBuilder: (context, animation, animationtwo, child) {
//             var begin = const Offset(0.0, -1.0);
//             var end = Offset.zero;
//             var tween = Tween(
//               begin: begin,
//               end: end,
//             );
//             var curveanimation = CurvedAnimation(
//                 parent: animation, curve: Curves.linear);
//             return SlideTransition(
//               position: tween.animate(curveanimation),
//               child: child,
//             );
//           },
//           pageBuilder: (context, animation, animationtwo) => page,
//         );
// }


//
//
// class Slide extends PageRouteBuilder {
//   final page;
//
//   Slide({this.page})
//       : super(
//     transitionsBuilder: (context, animation, animationtwo, child) {
//       var begin =  0.0;
//       var end = 1.0;
//       var tween = Tween(
//         begin: begin,
//         end: end,
//       );
//       var curveanimation = CurvedAnimation(
//           parent: animation, curve: Curves.linear);
//       return ScaleTransition(
//         scale: tween.animate(curveanimation),
//         child: child,
//       );
//     },
//     pageBuilder: (context, animation, animationtwo) => page,
//   );
// }


//
//
// class Slide extends PageRouteBuilder {
//   final page;
//
//   Slide({this.page})
//       : super(
//     transitionsBuilder: (context, animation, animationtwo, child) {
//       var begin =  0.0;
//       var end = 1.0;
//       var tween = Tween(
//         begin: begin,
//         end: end,
//       );
//       var curveanimation = CurvedAnimation(
//           parent: animation, curve: Curves.easeInToLinear);
//       return RotationTransition(
//         turns: tween.animate(curveanimation),
//         child: child,
//       );
//     },
//     pageBuilder: (context, animation, animationtwo) => page,
//   );
// }



//
//
// class Slide extends PageRouteBuilder {
//   final page;
//
//   Slide({this.page})
//       : super(
//     transitionsBuilder: (context, animation, animationtwo, child) {
//     return Align(alignment: Alignment.center,child:SizeTransition(sizeFactor: animation,child: child,));
//     },
//     pageBuilder: (context, animation, animationtwo) => page,
//   );
// }













class Scale extends PageRouteBuilder {
  final page;

  Scale({this.page})
      : super(
    transitionsBuilder: (context, animation, animationtwo, child) {
      var begin =  0.0;
      var end = 1.0;
      var tween = Tween(
        begin: begin,
        end: end,
      );
      var curveanimation = CurvedAnimation(
          parent: animation, curve: Curves.linearToEaseOut);


      return ScaleTransition(
        scale: tween.animate(curveanimation),
        child: child,
      );
    },
    pageBuilder: (context, animation, animationtwo) => page,
  );
}




class Rotation extends PageRouteBuilder {
  final page;

  Rotation({this.page})
      : super(
    transitionsBuilder: (context, animation, animationtwo, child) {
      var begin =  0.0;
      var end = 1.0;
      var tween = Tween(
        begin: begin,
        end: end,
      );
      var curveanimation = CurvedAnimation(
          parent: animation, curve: Curves.linearToEaseOut);


      return RotationTransition(
        turns: tween.animate(curveanimation),
        child: child,
      );
    },
    pageBuilder: (context, animation, animationtwo) => page,
  );
}




class Alignmentaion extends PageRouteBuilder {
  final page;

  Alignmentaion({this.page})
      : super(
    transitionsBuilder: (context, animation, animationtwo, child) {
      var begin =  0.0;
      var end = 1.0;
      var tween = Tween(
        begin: begin,
        end: end,
      );
      var curveanimation = CurvedAnimation(
          parent: animation, curve: Curves.linearToEaseOut);


      //بيقسم الشاشه نصين
 return Align(alignment: Alignment.center,child:SizeTransition(sizeFactor: animation,child: child,));

    },
    pageBuilder: (context, animation, animationtwo) => page,
  );
}





class Fadetion extends PageRouteBuilder {
  final page;

  Fadetion({this.page})
      : super(
    transitionsBuilder: (context, animation, animationtwo, child) {
      var begin =  0.0;
      var end = 1.0;
      var tween = Tween(
        begin: begin,
        end: end,
      );
      var curveanimation = CurvedAnimation(
          parent: animation, curve: Curves.linearToEaseOut);





      // //شفاف
      return FadeTransition(opacity: animation,child: child,);


    },
    pageBuilder: (context, animation, animationtwo) => page,
  );
}

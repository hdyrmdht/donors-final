import 'package:bloodbank_donors/screens/register/sign_up.dart';
import 'package:bloodbank_donors/share/componant/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  String? image;
  String? title;
  String? body;
  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {
  static const String routeName = 'Onboarding';

  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var borderController = PageController();
  bool isLast = false;
  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/images/abo.png',
      title: "شارك حالتك",
      body: "اضافة حالة المريض الذي يحتاج للدم\nوالمشاركة أيضا في طلبات التبرع",
    ),
    BoardingModel(
      image: 'assets/images/donor.png',
      body:
          "التبرع للمرضى و بشكل خاص للحالات الحرجة التي \nيزيد الوقت من شدة حالته",
      title: "التبرع للآخرين",
    ),
    BoardingModel(
      image: 'assets/images/blood.png',
      body:
          "تتبع الأشخاص الذين يتبرعون الدم و التحقق \nمن سلامة مؤشراتهم الحيوية",
      title: "تتبع المتبرع ",
    ),
  ];
  void submit() {
    CacheHelper.saveShared(key: 'onBoarding', value: true).then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MyRegister(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0.0, actions: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextButton(
              onPressed: () {
                submit();
              },
              child: const Text(
                'SKIP',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              //ال pageView دي الصفحه اللى قبل تسجل الدخول اللى بتعرفك على التطبيق
              child: PageView.builder(
                reverse: false,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                controller: borderController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            const SizedBox(
              height: 40.1,
            ),
            Stack(children: [
              Row(
                children: [
                  //دى علشان شكل التلت نقط اللى هتتحرك لما احرك الشاشات والنقط تتحرك معاها اسمها //indacator

                  SmoothPageIndicator(
                    controller: borderController,
                    //علشان شكل التلت نقط
                    effect: const ExpandingDotsEffect(
                      dotColor: Colors.red,
                      activeDotColor: Colors.black,
                      dotHeight: 15,
                      expansionFactor: 4, //دي اللى بتوصل بين النقطتين
                      dotWidth: 15,
                      spacing: 5,
                    ),
                    count: boarding.length,
                  ),

                  const Spacer(), //علشان يرمى اللى بعديه فى اخر الصفحه يعنى بيبعد اللى قبليه عن اللى بعديه
                  FloatingActionButton(
                    backgroundColor: Colors.red,
                    onPressed: () {
                      borderController.nextPage(
                          duration: const Duration(seconds: 2),
                          curve: Curves.linearToEaseOut);
                      if (isLast) {
                        submit();
                      }
                    },
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ])
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel boardingForModel) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image(
                  fit: BoxFit.contain,
                  image: AssetImage(boardingForModel.image!)),
            ),
          ),
          const SizedBox(
            height: 10.1,
          ),
          GradientText(
            boardingForModel.title!,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 12,
            ),
            gradientType: GradientType.linear,
            radius: 8.5,
            colors: [
              Colors.red,
              Colors.black,
            ],
          ),
          const SizedBox(
            height: 20.1,
          ),
          GradientText(
            boardingForModel.body!,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 25,
            ),
            gradientType: GradientType.linear,
            radius: 8.5,
            colors: [
              Colors.blue,
              Colors.red,
              Colors.teal,
            ],
          ),
          const SizedBox(
            height: 15.1,
          ),
        ],
      );
}

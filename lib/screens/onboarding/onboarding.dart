import 'package:bloodbank_donors/layout/home_layout.dart';
import 'package:bloodbank_donors/screens/profile/profile.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {

  static const String routeName = 'Onboarding';

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController nextPage = PageController();

  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (value) {
          setState(() {});
          pageNumber = value;
        },
        controller: nextPage,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Image.asset("assets/images/abo.png"),
              ),
              Text("شارك حالتك",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text(
                  "اضافة حالة المريض الذي يحتاج للدم\nوالمشاركة أيضا في طلبات التبرع"),
              Spacer(),
              Stack(
                children: [
                  Image.asset("assets/images/vector4.png"),
                  dotPageView(),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset("assets/images/donor.png"),
              ),
              Text("التبرع للآخرين",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text(
                  "التبرع للمرضى و بشكل خاص للحالات الحرجة التي \nيزيد الوقت من شدة حالته",
                  textAlign: TextAlign.center),
              Spacer(),
              Stack(
                children: [
                  Image.asset("assets/images/vector3.png"),
                  dotPageView(),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset("assets/images/blood.png"),
              ),
              Text("تتبع المتبرع ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text(
                  "تتبع الأشخاص الذين يتبرعون الدم و التحقق \nمن سلامة مؤشراتهم الحيوية",
                  textAlign: TextAlign.center),
              Spacer(),
              Stack(
                children: [
                  Image.asset("assets/images/vector2.png"),
                  dotPageView(),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset("assets/images/hospital.png"),
              ),
              Text("إدارة التبرع",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text("تقديم التبرعات للمستشفيات وبنوك \nالدم",
                  textAlign: TextAlign.center),
              Spacer(),
              Stack(
                children: [
                  Image.asset("assets/images/vector1.png"),
                  Center(
                    child: MaterialButton(
                      shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.white,
                      onPressed: () {
                       Navigator.pushReplacementNamed(context,"homeLayout");
                      },
                      child: Text("للننطلق",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
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

  Widget dotPageView() {
    return Builder(
      builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 3; i++)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: i == pageNumber ? 25 : 6,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: i == pageNumber ? Colors.red : Colors.grey,
                ),
              ),
          ],
        );
      },
    );
  }
}
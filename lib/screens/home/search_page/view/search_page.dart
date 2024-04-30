import 'package:bloodbank_donors/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

import '../../../../../../../../../style/colors.dart';
import '../../../favouriates/model/hospital_model.dart';
import '../../../favouriates/widgets/hospital_card.dart';
import '../widgets/category_box.dart';

class SearchPage extends StatefulWidget {
  static const String routeName = "searchpage";

  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context, HomeScreen.routeName);
                },
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: AppColors.primary,
                  size: 27,
                )),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchBarAnimation(
                  searchBoxWidth: 300,
                  textEditingController: TextEditingController(),
                  isOriginalAnimation: false,
                  buttonBorderColour: Colors.black45,
                  buttonWidget: const Icon(
                    Icons.search,
                    color: AppColors.primary,
                  ),
                  secondaryButtonWidget:
                      const Icon(Icons.cancel, color: AppColors.primary60),
                  trailingWidget: const Icon(Icons.sort),
                  onFieldSubmitted: (String value) {
                    debugPrint('onFieldSubmitted value $value');
                  },
                  onPressButton: (hello) {
                    //   Navigator.pushNamed(context, SearchPage.routeName);
                  },
                  onChanged: () {},
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                      width: double.infinity,
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return const SizedBox(
                              width: 5,
                            );
                          },
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  currentIndex == index;
                                });
                              },
                              child: CategoryBox(
                                isCurrent: currentIndex == index,
                              ),
                            );
                          },
                          itemCount: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListView.separated(
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: favouriteHospitals.length,
                      //favouriteDoctors.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                        height: 20,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final favouritehospitals = favouriteHospitals[index];
                        return FavouriteHospitalCard(
                          name: favouritehospitals.name,
                          review: favouritehospitals.review,
                          title: favouritehospitals.title,
                          hospital: favouritehospitals.hospital,
                        );
                      },
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}

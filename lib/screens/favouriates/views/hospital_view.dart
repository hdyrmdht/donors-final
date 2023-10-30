import 'package:bloodbank_donors/style/colors.dart';
import 'package:flutter/material.dart';

import '../model/hospital_model.dart';

import '../widgets/hospital_card.dart';

class HospitalsView extends StatefulWidget {
  static const String routeName="favdhospitals";
  const HospitalsView({super.key});

  @override
  State<HospitalsView> createState() => _HospitalsViewState();
}

class _HospitalsViewState extends State<HospitalsView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        
        title: Text(
          ' Hospitals',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 27,
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                  margin: const EdgeInsetsDirectional.only(end: 10),
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      color: AppColors.primary90,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Icon(
                    Icons.local_hospital_rounded,
                    // Remix.filter_3_fill,
                    color: AppColors.primary60,
                  )),
            ],
          )
        ],
      ),
      body: ListView.separated(
        itemCount: favouriteHospitals.length,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 20,
        ),
        itemBuilder: (BuildContext context, int index) {
          final favouritehospitals = favouriteHospitals[index];
          return InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 0),
                      height: 280,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 40,
                              height: 2.5,
                              decoration: const BoxDecoration(
                                  color: AppColors.grey90,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FavouriteHospitalCard(
                                name: favouritehospitals.name,
                                review: favouritehospitals.review,
                                title: favouritehospitals.title,
                                hospital: favouritehospitals.hospital,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Remove from favourite?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(25)),
                                      border: Border.all(
                                         // color: AppColors.primary800,
                                          style: BorderStyle.solid),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                         //   color: AppColors.primary800,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                   //   color: AppColors.primary800,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(25)),
                                      border: Border.all(
                                      //    color: AppColors.,
                                          style: BorderStyle.solid),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Yes, Remove',
                                        style:TextStyle(
                                            color: AppColors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: FavouriteHospitalCard(
              name:favouritehospitals.name,
              review:favouritehospitals.review,
              title: favouritehospitals.title,
              hospital:favouritehospitals.hospital,
            ),
          );
        },
      ),
    );
  }
}

import 'package:bloodbank_donors/style/colors.dart';
import 'package:flutter/material.dart';

class FavouriteHospitalCard extends StatelessWidget {
  const FavouriteHospitalCard({
    super.key,
    required this.name,
    required this.review,
    required this.title,
    required this.hospital,
  });

  final String name;
  final String review;
  final String title;
  final String hospital;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      padding: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(
            color: AppColors.grey100,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                image: DecorationImage(
                    image: AssetImage('assets/images/person2.jpg'),
                    fit: BoxFit.cover)),
            // child: Image.asset(
            //   ,
            //   height: 80,
            //   width: 80,
            // ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  const Icon(
                      //Remix.star_half_s_fill,
                      Icons.star_border,
                      color: AppColors.primary),
                  Text(
                    review,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              Text(
                hospital,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Image.asset(
                'assets/images/heart-shape.png',
                width: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

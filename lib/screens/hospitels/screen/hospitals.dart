import 'package:flutter/material.dart';

import '../../../share/componant/drop_dwon_menu.dart';
import '../../../style/colors.dart';

class Hospitals extends StatelessWidget {
  const Hospitals({super.key});
  static const String hospitals = "hospitals";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
          130,
        ),
        child: Container(
          height: 130,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.search,
                  color: AppColors.white,
                  size: 50,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "ابحث عن مستشفى",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 26,
                      ),
                    ),
                    Text(
                      "يوجد بها دماء",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          color: AppColors.grey100,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      child: DefaultDropdownMenuButton(
                        value: "الكل",
                        hint: Text(
                          "الكل",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 26,
                            color: AppColors.grey,
                          ),
                        ),
                        isExpanded: true,
                        listOfDropdownMenuItem: [
                          DropdownMenuItem(
                            value: "الكل", // Unique value for each item
                            child: Text(
                              "الكل",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary,
                              ),
                            ),
                            onTap: () {
                              // navigateTo(context, Routes.salesGridViewComponent);
                            },
                          ),
                          DropdownMenuItem(
                            value: "A-", // Unique value for each item
                            child: Text(
                              "A-",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "A+", // Unique value for each item
                            child: Text(
                              "A+",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "B-", // Unique value for each item
                            child: Text(
                              "B-",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "B+", // Unique value for each item
                            child: Text(
                              "B+",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "AB", // Unique value for each item
                            child: Text(
                              textAlign: TextAlign.center,
                              "AB",
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "AB+", // Unique value for each item
                            child: Text(
                              "AB+",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "O-", // Unique value for each item
                            child: Text(
                              textAlign: TextAlign.center,
                              "O-",
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "O+", // Unique value for each item
                            child: Text(
                              textAlign: TextAlign.center,
                              "O+",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 26,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                        onChange: (value) {},
                        icon: Icons.bloodtype,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      child: Text(
                        "? هل تريد البحث عن مستشفى يوجد بها فصيله محدده",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return itemHospitalsListView();
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: 10000),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget itemHospitalsListView() {
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      children: [
        Container(
          color: AppColors.primary,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "السلام العامه",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          ": الاسم",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "+0238802560",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          ":التلفون",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "طنطا السلام ,المنصوره",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          ":المكان",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.hot_tub_sharp,
                  color: AppColors.white,
                  size: 50,
                )
                // const Image(
                //   fit: BoxFit.cover,
                //   width: 120,
                //   height: 120,
                //   image: NetworkImage(
                //     "https://img.freepik.com/free-vector/green-arabic-calligraphy-name-allah_483537-4088.jpg",
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: AppColors.white,
                size: 28,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "اعرف المزيد",
                style: TextStyle(color: AppColors.white, fontSize: 22),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

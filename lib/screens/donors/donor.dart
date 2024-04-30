import 'package:flutter/material.dart';
import 'package:bloodbank_donors/style/colors.dart';

import '../../share/componant/drop_dwon_menu.dart';

class Donors extends StatelessWidget {
  const Donors({super.key});

  static const String donors = "donors";

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
          decoration: const BoxDecoration(
            color: AppColors.primary60,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16),
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
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "ابحث عن متبرع",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 26,
                      ),
                    ),
                    Text(
                      "اشخاص جاهزون للتبرع",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 26,
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
                      width: MediaQuery
                          .sizeOf(context)
                          .width * 0.4,
                      child: DefaultDropdownMenuButton(
                        value: "الكل",
                        hint: const Text(
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
                            child: const Text(
                              "الكل",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary60,
                              ),
                            ),
                            onTap: () {
                              // navigateTo(context, Routes.salesGridViewComponent);
                            },
                          ),
                          DropdownMenuItem(
                            value: "A-", // Unique value for each item
                            child: const Text(
                              "A-",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary60,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "A+", // Unique value for each item
                            child: const Text(
                              "A+",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary60,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "B-", // Unique value for each item
                            child: const Text(
                              "B-",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary60,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "B+", // Unique value for each item
                            child: const Text(
                              "B+",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary60,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "AB", // Unique value for each item
                            child: const Text(
                              textAlign: TextAlign.center,
                              "AB",
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary60,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "AB+", // Unique value for each item
                            child: const Text(
                              "AB+",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary60,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "O-", // Unique value for each item
                            child: const Text(
                              textAlign: TextAlign.center,
                              "O-",
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary60,
                              ),
                            ),
                            onTap: () {},
                          ),
                          DropdownMenuItem(
                            value: "O+", // Unique value for each item
                            child: const Text(
                              textAlign: TextAlign.center,
                              "O+",
                              style: TextStyle(
                                fontSize: 26,
                                color: AppColors.primary60,
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
                      width: MediaQuery
                          .sizeOf(context)
                          .width * 0.5,
                      child: const Text(
                        "? هل تريد البحث عن فصيله محدده",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 26,
                          color: AppColors.primary60,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return itemDonorsListView();
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

Widget itemDonorsListView() {
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      children: [
        Container(
          color: AppColors.primary60,
          child: const Padding(
            padding: EdgeInsets.all(4),
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
                          "احمد مجاهد",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 26,
                            color: AppColors.primary60,
                          ),
                        ),
                        Text(
                          ": الاسم",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          " O +",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white,
                          ),
                        ),
                        Text(
                          ": الفصيله",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "01125345129",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white,
                          ),
                        ),
                        Text(
                          ":التلفون",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "عزبه الكرام ,المنصوره",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white,
                          ),
                        ),
                        Text(
                          ":المكان",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.person_pin_rounded,
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
          decoration: const BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: AppColors.white,
                size: 28,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "اعرف المزيد",
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

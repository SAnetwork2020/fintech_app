import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/custom_app_bar.dart';
import '../../../../utils/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          const CustomAppBars(title: "Profile",),
          const SizedBox(height: 33),
          Assets.images.gregoryStones.image(),
          const SizedBox(height: 12),
          Text(
            "Gregory Stones",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: AppColors.c000000,
            ),
          ),
          const SizedBox(height: 36),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 11),
              itemCount: profileItems.length,
              itemBuilder: (context, index) => ProfileItem(
                title: profileItems[index]["title"],
                desc: profileItems[index]["desc"],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    this.onTap,
    required this.title,
    required this.desc,
  });
  final void Function()? onTap;
  final String title, desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 40),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  // softWrap: true,
                  // overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.c000000,
                  ),
                ),
                Text(
                  desc,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: AppColors.c000000.withOpacity(.5),
                  ),
                ),
              ],
            ),
            Assets.icons.arrowRight2.svg(),
          ],
        ),
      ),
    );
  }
}

List profileItems = [
  {
    "title": "Gregory Stones",
    "desc": "Full Name",
  },
  {
    "title": "2244556677",
    "desc": "Account Number",
  },
  {
    "title": "Gregorystones@gmail.com",
    "desc": "Email",
  },
  {
    "title": "44783299232",
    "desc": "BVN",
  },
  {
    "title": "O.A.U Senior Staff quarters, Road 21, House 2",
    "desc": "Address",
  },
  {
    "title": "08123456789",
    "desc": "Phone Number",
  },
  {
    "title": "Male",
    "desc": "Gender",
  },
  {
    "title": "12-06-1995",
    "desc": "Date Of Birth",
  },
];

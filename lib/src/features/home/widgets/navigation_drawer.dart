import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';
import '../presentation/drawer_list.dart';

Drawer navigationDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: AppColors.c232121,
    child: Column(
      children: [
        Expanded(
          child: ListView.separated(
            // shrinkWrap: true,
            itemCount: drawerIconList(context).length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11.0),
              child:
                  // Container(),
                  buildDrawer(index, context),
            ),
            separatorBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11.0),
              child: Divider(
                color: AppColors.c9D9B9B,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildDrawer(int index, BuildContext context) {
  if (index == 2 || index == 4 || index == 5 || index == 6) {
    return ExpansionTile(
      childrenPadding: const EdgeInsets.only(left: 56),
      tilePadding: EdgeInsets.zero,
      iconColor: AppColors.cFFFFFF,
      collapsedIconColor: AppColors.cFFFFFF,
      title: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            margin: const EdgeInsets.only(left: 15),
            padding: const EdgeInsets.all(9),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.c9D9B9B,
            ),
            child: drawerIconList(context)[index]["icons"],
          ),
          const SizedBox(width: 10),
          Text(
            drawerIconList(context)[index]["title"],
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: AppColors.cFFFFFF,
            ),
          ),
        ],
      ),
      children: List.generate(
        drawerIconList(context)[index]["children"].length,
        (subIndex) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: drawerIconList(context)[index]["children"][subIndex]
                  ["onTap"],
              child: Row(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    margin: const EdgeInsets.only(left: 15),
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.c9D9B9B,
                    ),
                    child:
                        // drawerIconList(context)[index]["children"]["icons"]
                        drawerIconList(context)[index]["children"][subIndex]
                            ["icons"],
                  ),
                  const SizedBox(width: 10),
                  Text(
                    // drawerIconList(context)[index]["children"][index]["title"],
                    // "index",
                    drawerIconList(context)[index]["children"][subIndex]
                        ["title"],
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                ],
              ),
            ),
            if (subIndex != 0 ||
                subIndex !=
                    (drawerIconList(context)[index]["children"].length - 1))
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11.0),
                child: Divider(
                  color: AppColors.c9D9B9B,
                ),
              ),
          ],
        ),
      ),
    );
  } else {
    return InkWell(
      onTap: drawerIconList(context)[index]["onTap"],
      child: Row(
        children: [
          index == 1
              ? Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: Assets.images.gregoryStones.image(
                    width: 42,
                    height: 42,
                  ),
                )
              : Container(
                  width: 42,
                  height: 42,
                  margin: const EdgeInsets.only(left: 15),
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.c9D9B9B,
                  ),
                  child:
                      // buildColor(index),
                      drawerIconList(context)[index]["icons"],
                  //     .svg(
                  //   colorFilter: ColorFilter.mode(
                  //     AppColors.cFFFFFF,
                  //     BlendMode.srcIn,
                  //   ),
                  // ),
                ),
          // : drawerIconList(context)[index]["icons"],
          // Assets.images.gregoryStones.image(),
          const SizedBox(width: 10),
          Text(
            drawerIconList(context)[index]["title"],
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: AppColors.cFFFFFF,
            ),
          ),
        ],
      ),
    );
  }
}

buildColor(int index, BuildContext context) {
  if (index == 1) {
    return Assets.images.gregoryStones.image();
  } else {
    drawerIconList(context)[index]["icons"].svg(
      colorFilter: ColorFilter.mode(
        AppColors.cFFFFFF,
        BlendMode.srcIn,
      ),
    );
  }
}

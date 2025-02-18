import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class CustomListDrawerItem extends StatefulWidget {
  const CustomListDrawerItem({
    super.key,
  });

  @override
  State<CustomListDrawerItem> createState() => _CustomListDrawerItemState();
}

class _CustomListDrawerItemState extends State<CustomListDrawerItem> {
  int curruntIndex = 0;
  final List<DrawerModel> drawerList = const [
    DrawerModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerModel(title: 'My Transaction', image: Assets.imagesMyTransaction),
    DrawerModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerModel(title: 'Wallet Account', image: Assets.imagesWallet2),
    DrawerModel(title: 'My Investments', image: Assets.imagesMyInvesment),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: drawerList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              if (curruntIndex != index) {
                setState(() {
                  curruntIndex = index;
                  log('currntIndex = $curruntIndex');
                });
              }
            },
            child: DrawerItem(
              drawerModel: drawerList[index],
              isActive: curruntIndex == index,
            ));
      },
    );
  }
}

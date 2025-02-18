import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_listView.dart';
import 'package:responsive_dash_board/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserInfoListtile(
            image: Assets.imagesAvatarAdmin,
            title: 'Ahmed Wael',
            subTitle: 'ahmed855wael@gmail.com'),
        SizedBox(
          height: 6,
        ),
        CustomListDrawerItem()
      ],
    );
  }
}

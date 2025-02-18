import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/widgets/active_and_inActive_drawerItem.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_listView.dart';
import 'package:responsive_dash_board/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListtile(
                image: Assets.imagesAvatarAdmin,
                title: 'Ahmed Wael',
                subTitle: 'ahmed855wael@gmail.com'),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 6,
            ),
          ),
          CustomListDrawerItem(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveItem(
                    drawerModel: DrawerModel(
                        title: 'Setting system', image: Assets.imagesSetting2)),
                InActiveItem(
                    drawerModel: DrawerModel(
                        title: 'Logout account', image: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

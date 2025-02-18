import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.image),
      title: Text(
        drawerModel.title,
        style: AppStyles.styleRegular16,
      ),
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.image),
      title: Text(
        drawerModel.title,
        style: AppStyles.styleSemiBold20,
      ),
      trailing: Container(
        width: 3.5,
        decoration: const BoxDecoration(color: Colors.blue),
      ),
    );
  }
}

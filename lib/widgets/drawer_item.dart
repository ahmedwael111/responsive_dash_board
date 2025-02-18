import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_model.dart';
import 'package:responsive_dash_board/widgets/active_and_inActive_drawerItem.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerModel, required this.isActive});
  final DrawerModel drawerModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(drawerModel: drawerModel)
        : InActiveItem(drawerModel: drawerModel);
  }
}

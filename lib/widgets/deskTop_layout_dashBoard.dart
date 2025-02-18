import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DesktopLayoutDashboard extends StatelessWidget {
  const DesktopLayoutDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [Expanded(child: CustomDrawer())],
    );
  }
}

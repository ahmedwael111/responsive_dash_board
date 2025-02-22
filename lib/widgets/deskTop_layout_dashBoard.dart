import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/meddil_section.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class DesktopLayoutDashboard extends StatelessWidget {
  const DesktopLayoutDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 22,
        ),
        Expanded(
          flex: 2,
          child: MedillSection(),
        ),
        SizedBox(
          width: 22,
        ),
        Expanded(child: MyCard())
      ],
    );
  }
}

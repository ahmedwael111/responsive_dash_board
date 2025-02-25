import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adabtive_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class AdabtiveTabletLayout extends StatelessWidget {
  const AdabtiveTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: AdavtiveMobileLayout(),
        ),
        SizedBox(
          width: 32,
        )
      ],
    );
  }
}

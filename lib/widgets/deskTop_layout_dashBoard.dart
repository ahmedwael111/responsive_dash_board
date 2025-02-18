import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

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
            child: Column(
              children: [Expanded(child: AllExpenses())],
            ))
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_custom.dart';
import 'package:responsive_dash_board/widgets/deskTop_layout_dashBoard.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdabtiveLayoutWidget(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DesktopLayoutDashboard()),
    );
  }
}

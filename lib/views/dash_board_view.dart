import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adabtive_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/adabtive_tablet_layout.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_custom.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/deskTop_layout_dashBoard.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  GlobalKey<ScaffoldState> scffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scffoldKey,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: Colors.grey[100],
              leading: GestureDetector(
                  onTap: () {
                    scffoldKey.currentState!.openDrawer();
                  },
                  child: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdabtiveLayoutWidget(
          mobileLayout: (context) => const AdavtiveMobileLayout(),
          tabletLayout: (context) => const AdabtiveTabletLayout(),
          desktopLayout: (context) => const DesktopLayoutDashboard()),
    );
  }
}

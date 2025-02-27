import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
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
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scffoldKey,
      drawer: width < SizeConfig.breakBointTablet ? const CustomDrawer() : null,
      appBar: width < SizeConfig.breakBointTablet
          ? AppBar(
              toolbarHeight: 30,
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

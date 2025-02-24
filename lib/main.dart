import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dash_board_view.dart';

void main() {
  runApp(const ResponsivDashBoard());
}

class ResponsivDashBoard extends StatelessWidget {
  const ResponsivDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}

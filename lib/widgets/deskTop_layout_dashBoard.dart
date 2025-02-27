import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/incom_section.dart';
import 'package:responsive_dash_board/widgets/meddil_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transection_section.dart';

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
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: MedillSection(),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          MyCardAndTransectionSection(),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(child: IncomSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

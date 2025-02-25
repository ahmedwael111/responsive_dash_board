import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/incom_section.dart';
import 'package:responsive_dash_board/widgets/meddil_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transection_section.dart';

class AdavtiveMobileLayout extends StatelessWidget {
  const AdavtiveMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MedillSection(),
          SizedBox(
            height: 20,
          ),
          MyCardAndTransectionSection(),
          SizedBox(
            height: 20,
          ),
          IncomSection(),
        ],
      ),
    );
  }
}

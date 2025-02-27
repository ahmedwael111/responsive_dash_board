import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_widget.dart';
import 'package:responsive_dash_board/widgets/income_body.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';
import 'package:responsive_dash_board/widgets/income_header.dart';

class IncomSection extends StatelessWidget {
  const IncomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [IncomeHeader(), IncomeBody()],
      ),
    );
  }
}

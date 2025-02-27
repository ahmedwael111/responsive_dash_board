import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/detaild_income_chart.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return 1200 <= width && width <= 1530
        ? const Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: SizedBox(width: 250, child: DetailedIncomeChart()),
          )
        : const Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 3, child: IncomeDetails()),
            ],
          );
  }
}

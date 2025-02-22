import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/quick_invoive.dart';

class MedillSection extends StatelessWidget {
  const MedillSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 12,
        ),
        QuickInvoive(),
      ],
    );
  }
}

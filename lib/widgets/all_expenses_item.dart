import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/active&inActive_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesItemModel, required this.isactive});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 500),
      firstChild:
          ActiveExpensesItem(allExpensesItemModel: allExpensesItemModel),
      secondChild:
          InActiveExpensesItem(allExpensesItemModel: allExpensesItemModel),
      crossFadeState:
          isactive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  // const InActiveExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
                width: 1, color: Color.fromARGB(255, 235, 234, 234)),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              image: allExpensesItemModel.image,
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              allExpensesItemModel.title,
              style: AppStyles.styleMedium16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular14,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24,
            ),
          ],
        ),
      ),
    );
  }
}

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              imageColor: Colors.white,
              imageBackgroundColor: Colors.white.withOpacity(0.1),
              image: allExpensesItemModel.image,
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              allExpensesItemModel.title,
              style: AppStyles.styleMedium16.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular14.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

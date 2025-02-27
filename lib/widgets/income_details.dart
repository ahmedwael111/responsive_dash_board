import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeItemModel(
        color: Color(0xff208BC8), title: 'Design service', trailing: '40%'),
    IncomeItemModel(
        color: Color(0xff4EB7F2), title: 'Design product', trailing: '25%'),
    IncomeItemModel(
        color: Color(0xff064061), title: 'Product royalti', trailing: '20%'),
    IncomeItemModel(color: Color(0xffE2DECD), title: 'Other', trailing: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    // log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      children: items.map(
        (e) {
          return IncomeItem(incomeItemModel: e);
        },
      ).toList(),
    );

    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return IncomeItem(incomeItemModel: items[index]);
    //   },
    // );
  }
}

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.incomeItemModel});
  final IncomeItemModel incomeItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 10,
        width: 10,
        decoration: ShapeDecoration(
            color: incomeItemModel.color, shape: const OvalBorder()),
      ),
      title: Text(
        incomeItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeItemModel.trailing,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}

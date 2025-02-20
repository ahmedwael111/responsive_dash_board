import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemList extends StatefulWidget {
  const AllExpensesItemList({super.key});

  @override
  State<AllExpensesItemList> createState() => _AllExpensesItemListState();
}

int currrntIndex = 0;
final List<AllExpensesItemModel> itemlist = [
  const AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129'),
  const AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'incom',
      date: 'April 2022',
      price: r'$20,129'),
  const AllExpensesItemModel(
      image: Assets.imagesOutcome,
      title: 'outCom',
      date: 'April 2022',
      price: r'$20,129'),
];

class _AllExpensesItemListState extends State<AllExpensesItemList> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: itemlist.asMap().entries.map(
      (e) {
        int x = e.key;
        var item = e.value;
        return x == 1
            ? Expanded(
                child: GestureDetector(
                onTap: () {
                  setState(() {
                    currrntIndex = e.key;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: AllExpensesItem(
                    allExpensesItemModel: item,
                    isactive: currrntIndex == e.key,
                  ),
                ),
              ))
            : Expanded(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currrntIndex = e.key;
                      });
                    },
                    child: AllExpensesItem(
                      allExpensesItemModel: item,
                      isactive: currrntIndex == e.key,
                    )));
      },
    ).toList());
  }
}

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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currrntIndex = 0;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: itemlist[0],
              isactive: currrntIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currrntIndex = 1;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: itemlist[1],
              isactive: currrntIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currrntIndex = 2;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: itemlist[2],
              isactive: currrntIndex == 2,
            ),
          ),
        ),
      ],
    );
    // return Row(
    //     children: itemlist.asMap().entries.map(
    //   (e) {
    //     int x = e.key;
    //     var item = e.value;
    //     return Expanded(
    //       child: GestureDetector(
    //         onTap: () {
    //           setState(() {
    //             currrntIndex = e.key;
    //           });
    //         },
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(horizontal: x == 1 ? 12 : 0),
    //           child: AllExpensesItem(
    //             allExpensesItemModel: item,
    //             isactive: currrntIndex == e.key,
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // ).toList());
  }
}

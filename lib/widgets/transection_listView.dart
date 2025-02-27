import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transecton_model.dart';
import 'package:responsive_dash_board/widgets/transection_item.dart';

class TransectionListview extends StatelessWidget {
  const TransectionListview({super.key});
  static const items = [
    TransectonModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022',
        amount: r'$20,129',
        isDrewal: true),
    TransectonModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022',
        amount: r'$20,129',
        isDrewal: false),
    TransectonModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022',
        amount: r'$20,129',
        isDrewal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map(
        (e) {
          return TransectionItem(transectonModel: e);
        },
      ).toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return TransectionItem(transectonModel: items[index]);
    //   },
    // );
  }
}

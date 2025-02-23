import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transecton_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransectionItem extends StatelessWidget {
  const TransectionItem({super.key, required this.transectonModel});
  final TransectonModel transectonModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transectonModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transectonModel.date,
          style: AppStyles.styleRegular16.copyWith(color: Colors.grey),
        ),
        trailing: Text(
          transectonModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transectonModel.isDrewal
                ? const Color(0xffF3735E)
                : Colors.green,
          ),
        ),
      ),
    );
  }
}

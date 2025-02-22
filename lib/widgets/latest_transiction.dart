import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';
import 'package:responsive_dash_board/widgets/custom_title_textFiled.dart';
import 'package:responsive_dash_board/widgets/latest_transiction_listView.dart';

class LatestTransiction extends StatelessWidget {
  const LatestTransiction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransictionListView(),
        
      ],
    );
  }
}

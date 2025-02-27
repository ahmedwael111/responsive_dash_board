import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transection_listView.dart';

class TransectionHistory extends StatelessWidget {
  const TransectionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransectionHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleRegular16(context).copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransectionListview()
      ],
    );
  }
}

class TransectionHeader extends StatelessWidget {
  const TransectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: AppStyles.styleMedium16(context).copyWith(color: Colors.blue),
        ),
      ],
    );
  }
}

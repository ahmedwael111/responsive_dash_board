import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: const BorderSide(
                width: 1, color: Color.fromARGB(255, 235, 234, 234)),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 16,
          ),
          Transform.rotate(
              angle: -1.571,
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color(0xFF064061),
              ))
        ],
      ),
    );
  }
}

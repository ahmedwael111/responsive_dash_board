import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_widget.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';
import 'package:responsive_dash_board/widgets/my_card_widget.dart';
import 'package:responsive_dash_board/widgets/transection_history.dart';

class MyCardAndTransectionSection extends StatelessWidget {
  const MyCardAndTransectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [
          MyCardWidget(),
          Divider(
            height: 40,
            color: Color.fromARGB(255, 234, 232, 232),
          ),
          TransectionHistory()
        ],
      ),
    );
  }
}

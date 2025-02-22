import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_dot_indicator.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';

class MyCardWidget extends StatefulWidget {
  const MyCardWidget({super.key});

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  late PageController pageController;
  int currntIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currntIndex = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My card',
          style: AppStyles.styleSemiBold20,
        ),
        const SizedBox(
          height: 12,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 12,
        ),
        DotIndicatorList(
          currntIndex: currntIndex,
        )
      ],
    );
  }
}

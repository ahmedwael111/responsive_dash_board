import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class AdabtiveLayoutWidget extends StatelessWidget {
  const AdabtiveLayoutWidget(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < SizeConfig.breakBointTablet) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < SizeConfig.breakBointDeskTop) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}

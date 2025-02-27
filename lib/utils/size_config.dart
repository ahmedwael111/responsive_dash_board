import 'package:flutter/widgets.dart';

abstract class SizeConfig {
  static const double breakBointTablet = 800;
  static const double breakBointDeskTop = 1200;

  static late double width, hight;

 static init(context) {
     width = MediaQuery.sizeOf(context).width;
     hight = MediaQuery.sizeOf(context).height;
  }
}

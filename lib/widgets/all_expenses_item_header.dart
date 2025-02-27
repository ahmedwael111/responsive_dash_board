import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imageColor,
      this.imageBackgroundColor});
  final String image;
  final Color? imageColor;
  final Color? imageBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                  color: imageBackgroundColor ?? const Color(0xffFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(image,
                      colorFilter: ColorFilter.mode(
                          imageColor ?? Colors.blue, BlendMode.srcIn)),
                ),
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
            angle: -1.571 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: imageColor ?? const Color(0xFF064061),
            ))
      ],
    );
  }
}

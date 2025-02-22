import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 22 : 8,
      decoration: ShapeDecoration(
          color: isActive ? Colors.blue : Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}

class DotIndicatorList extends StatelessWidget {
  const DotIndicatorList({super.key, required this.currntIndex});
  final int currntIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 4),
          child: CustomDotIndicator(isActive: index == currntIndex),
        ),
      ),
    );
  }
}

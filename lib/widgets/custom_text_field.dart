import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue,
      decoration: InputDecoration(
          filled: true,
          hintStyle: AppStyles.styleRegular16(context).copyWith(color: Colors.grey),
          hintText: hint,
          fillColor: Colors.grey[100],
          enabledBorder: spsificOutline(),
          focusedBorder: spsificOutline()),
    );
  }

  OutlineInputBorder spsificOutline() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.transparent));
  }
}

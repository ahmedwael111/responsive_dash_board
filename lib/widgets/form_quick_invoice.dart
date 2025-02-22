import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_bottom.dart';
import 'package:responsive_dash_board/widgets/custom_title_textFiled.dart';

class FormQuickInvoice extends StatelessWidget {
  const FormQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: CustomTitleTextfiled(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: CustomTitleTextfiled(
                    title: 'Customer Email', hint: 'Type customer email')),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Expanded(
                child: CustomTitleTextfiled(
                    title: 'Item name', hint: 'Type customer name')),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: CustomTitleTextfiled(title: 'Item mount', hint: 'USD')),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Expanded(
                child: CustomBottom(
              textColor: Colors.blue,
              backGroundColor: Colors.white,
              text: 'Add more details',
            )),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: CustomBottom(
              textColor: Colors.white,
              backGroundColor: Colors.blue,
              text: 'Send Money',
            )),
          ],
        ),
      ],
    );
  }
}

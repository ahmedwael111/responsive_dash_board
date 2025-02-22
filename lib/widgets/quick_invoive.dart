import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_widget.dart';
import 'package:responsive_dash_board/widgets/form_quick_invoice.dart';
import 'package:responsive_dash_board/widgets/latest_transiction.dart';
import 'package:responsive_dash_board/widgets/quick_invok_header.dart';

class QuickInvoive extends StatelessWidget {
  const QuickInvoive({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 12,
          ),
          LatestTransiction(),
          Divider(
            height: 48,
          ),
          FormQuickInvoice()
        ],
      ),
    );
  }
}

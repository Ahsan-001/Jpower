import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:power/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:power/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:power/Utils/colors.dart';
import 'package:power/Widgets/transactionHistoryTile.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverAppBar(
          snap: false,
          pinned: true,
          floating: true,
          flexibleSpace: const FlexibleSpaceBar(
            centerTitle: true,
            title: Text(
              "Transaction History",
              style: h16HeadingWhiteBold,
            ),
          ),
          expandedHeight: 150,
          backgroundColor: kRedColor,
          actions: [
            IconButton(
              icon: const Icon(Icons.replay),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ),
          ], //<Widget>[]
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          // fillOverscroll: true,
          child: Column(
            children: const [
              TransactionTile(
                title: "IBFT FEE",
                subtitle: "22-Sep-2022",
                pkr1: "- 24.85",
                pkr2: " PKR",
                blnc: "Running Balance: 312,003.46",
              ),
              TransactionTile(
                title: "Funds Transfer (IBFT)",
                subtitle: "04-Oct-2022",
                pkr1: "- 12,400.00",
                pkr2: " PKR",
                blnc: "Running Balance: 200,13.76",
              ),
              TransactionTile(
                title: "RAAST Transfer",
                subtitle: "18-July-2022",
                pkr1: "20.55",
                pkr2: " PKR",
                blnc: "Running Balance: 112,108.40",
              ),
              TransactionTile(
                title: "IBFT FEE",
                subtitle: "22-Sep-2022",
                pkr1: "- 24.85",
                pkr2: " PKR",
                blnc: "Running Balance: 312,003.46",
              ),
              TransactionTile(
                title: "Funds Transfer (IBFT)",
                subtitle: "04-Oct-2022",
                pkr1: "- 12,400.00",
                pkr2: " PKR",
                blnc: "Running Balance: 200,13.76",
              ),
              TransactionTile(
                title: "RAAST Transfer",
                subtitle: "18-July-2022",
                pkr1: "20.55",
                pkr2: " PKR",
                blnc: "Running Balance: 112,108.40",
              ),
              TransactionTile(
                title: "IBFT FEE",
                subtitle: "22-Sep-2022",
                pkr1: "- 24.85",
                pkr2: " PKR",
                blnc: "Running Balance: 312,003.46",
              ),
              TransactionTile(
                title: "Funds Transfer (IBFT)",
                subtitle: "04-Oct-2022",
                pkr1: "- 12,400.00",
                pkr2: " PKR",
                blnc: "Running Balance: 200,13.76",
              ),
              TransactionTile(
                title: "RAAST Transfer",
                subtitle: "18-July-2022",
                pkr1: "20.55",
                pkr2: " PKR",
                blnc: "Running Balance: 112,108.40",
              ),
            ],
          ),
        ), //SliverAppBar
      ], //<Widget>[]
    ));
  }
}

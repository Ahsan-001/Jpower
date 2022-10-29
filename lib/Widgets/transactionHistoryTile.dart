import 'package:flutter/material.dart';
import 'package:power/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:power/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:power/Utils/colors.dart';

class TransactionTile extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? pkr1;
  final String? pkr2;

  final String? blnc;
  const TransactionTile({
    Key? key,
    this.title,
    this.subtitle,
    this.pkr1,
    this.pkr2,
    this.blnc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: ListTile(
        tileColor: kBrightColor,
        leading: Image.asset(
          "assets/icons/transaction.png",
          height: 30,
          color: redColor,
        ),
        title: Text(
          title!,
          style: h14HeadingBlackBold,
        ),
        subtitle: Text(
          subtitle!,
          style: h12HeadingBlackSimple.copyWith(color: greyColor),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: pkr1!,
                      style: h14HeadingBlackBold.copyWith(color: kRedColor)),
                  TextSpan(
                    text: pkr2,
                    style: h11HeadingBlackSimple.copyWith(color: kRedColor),
                  ),
                ],
              ),
            ),
            Text(
              blnc!,
              style: h12HeadingBlackSimple.copyWith(color: greyColor),
            ),
          ],
        ),
      ),
    );
  }
}

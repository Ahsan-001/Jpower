import 'package:flutter/material.dart';
import 'package:power/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:power/Utils/colors.dart';

class DashboardCards extends StatelessWidget {
  final String? icon;
  final String? label;
  final VoidCallback? ontap;
  const DashboardCards({
    Key? key,
    this.icon,
    this.label,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: kBrightColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: greyColor.shade400,
              offset: const Offset(
                2.0,
                2.0,
              ),
              blurRadius: 4.0,
              spreadRadius: 0.5,
            ), //BoxShadow
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon!,
              height: 40,
              color: kMainColor,
            ),
            Text(
              label!,
            ),
          ],
        ),
      ),
    );
  }
}

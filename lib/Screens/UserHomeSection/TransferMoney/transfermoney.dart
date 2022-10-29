import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:power/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:power/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:power/Utils/colors.dart';

class TrasnferMoney extends StatelessWidget {
  const TrasnferMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrightColor,
      appBar: AppBar(
        title: const Text("Money Transfer"),
        backgroundColor: kRedColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                // padding: const EdgeInsets.symmetric(
                //     horizontal: 15, vertical: 0),
                decoration: BoxDecoration(
                  color: kTextfieldColor,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                      color: kBlackColor.withOpacity(0.05),
                    ),
                  ],
                ),
                child: const TextField(
                  style: h14HeadingBlackSimple,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Email / Phone',
                    hintStyle: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: kMainColor)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                // padding: const EdgeInsets.symmetric(
                //     horizontal: 15, vertical: 0),
                decoration: BoxDecoration(
                  color: kTextfieldColor,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                      color: kBlackColor.withOpacity(0.05),
                    ),
                  ],
                ),
                child: const TextField(
                  style: h14HeadingBlackSimple,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 17.0),
                      child: Text(
                        "USD",
                        style: h12HeadingBlackSimple,
                      ),
                    ),
                    hintText: 'Amount',
                    hintStyle: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: kMainColor)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            MaterialButton(
              height: 40,
              minWidth: 150,
              color: redColor,
              child: const Text(
                "Transfer Money",
                style: h16HeadingWhiteSimple,
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}

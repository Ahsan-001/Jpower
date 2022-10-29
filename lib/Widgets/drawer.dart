import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:power/Screens/UserHomeSection/Plans/plans.dart';
import 'package:power/Screens/UserHomeSection/TransactionHistory/transactionhistory.dart';
import 'package:power/Screens/UserHomeSection/TransferMoney/transfermoney.dart';
import 'package:power/Utils/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: Drawer(
        backgroundColor: kBrightColor,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 190.0,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: kMainColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 110.0,
                        width: 110.0,
                        decoration: BoxDecoration(
                            color: kDarkColor,
                            borderRadius: BorderRadius.circular(60)),
                        padding: const EdgeInsets.all(4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: SvgPicture.asset(
                            "assets/svgs/user.svg",
                            width: 122,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        "Username",
                        style: TextStyle(
                          color: kBrightColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 190.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      ListTile(
                        title: const Text(
                          'Dashboard',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kBlackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        leading: const Icon(
                          Icons.home_outlined,
                          size: 25.0,
                          color: kDarkColor,
                        ),
                        onTap: () {
                          Get.back();
                        },
                      ),
                      ListTile(
                        onTap: (() => Get.to(PlansView())),
                        title: const Text(
                          'Investment Plans',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kBlackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        leading: const Icon(
                          Icons.money,
                          size: 25.0,
                          color: kDarkColor,
                        ),
                      ),

                      const ListTile(
                        title: Text(
                          'Withdrawal',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kBlackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        leading: Icon(
                          Icons.wallet,
                          size: 25.0,
                          color: kDarkColor,
                        ),
                      ),

                      const ListTile(
                        title: Text(
                          'Network',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kBlackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        leading: Icon(
                          Icons.person_add,
                          size: 25.0,
                          color: kDarkColor,
                        ),
                      ),

                      ListTile(
                        onTap: (() => Get.to(const TransactionHistory())),
                        title: const Text(
                          'Transactions',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kBlackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        leading: const Icon(
                          Icons.list,
                          size: 25.0,
                          color: kDarkColor,
                        ),
                      ),

                      ListTile(
                        onTap: (() => Get.to(const TrasnferMoney())),
                        title: const Text(
                          'Transfer Balance',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kBlackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        leading: const Icon(
                          Icons.share_sharp,
                          size: 25.0,
                          color: kDarkColor,
                        ),
                      ),
                      const ListTile(
                        title: Text(
                          'Support Ticket',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kBlackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        leading: Icon(
                          Icons.chat_bubble_outline,
                          size: 25.0,
                          color: kDarkColor,
                        ),
                      ),

                      ListTile(
                        title: const Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kBlackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        leading: const Icon(
                          Icons.settings,
                          size: 25.0,
                          color: kDarkColor,
                        ),
                        onTap: () {
                          // await Get.find<AuthController>().signOut();
                        },
                      ),

                      // GestureDetectorWidget(
                      //   icon: Icon(
                      //     Icons.nfc_rounded,
                      //     size: 25.0,
                      //     color: kDarkColor,
                      //   ),
                      //   text: 'Read a taplo',
                      //   ontap: () {
                      //     final action = CupertinoActionSheet(
                      //       title: Text(
                      //         "Ready to Scan",
                      //         style: TextStyle(fontSize: 30),
                      //       ),
                      //       message: Column(
                      //         children: [
                      //           Lottie.asset('assets/scan_animation.json'),
                      //           Text(
                      //             "Hold a Taplo to the middle back of your phone to view Profile. Hold the Taplo there until the profile appears!",
                      //             style: TextStyle(
                      //               fontSize: 15.0,
                      //               color: Colors.black,
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             height: 15,
                      //           ),
                      //           Container(
                      //             decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(10),
                      //               color: Colors.grey,
                      //             ),
                      //             width: tWidth * 0.9,
                      //             child: MaterialButton(
                      //               onPressed: () => Navigator.pop(
                      //                 context,
                      //               ),
                      //               child: Text(
                      //                 "Cancel",
                      //                 style: TextStyle(
                      //                   color: Colors.black,
                      //                   fontSize: 18,
                      //                 ),
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     );
                      //     showCupertinoModalPopup(
                      //         context: context, builder: (context) => action);
                      //   },
                      // ),
                    ],
                  ),
                ),
              ],
            ),
            const Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    "Version 1.0",
                    style: TextStyle(
                      color: kDarkColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

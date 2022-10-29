import 'package:animations/animations.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:power/Screens/UserHomeSection/Plans/plans.dart';
import 'package:power/Screens/UserHomeSection/Purchased/purchased.dart';
import 'package:power/Screens/UserHomeSection/TransactionHistory/transactionhistory.dart';
import 'package:power/Screens/UserHomeSection/TransferMoney/transfermoney.dart';
import 'package:power/Screens/UserProfile/edit_profile.dart';
import 'package:power/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:power/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:power/Utils/colors.dart';
import 'package:power/Widgets/dashboardcards.dart';
import 'package:power/Widgets/drawer.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrightColor,
      appBar: AppBar(
        backgroundColor: kBrightColor,
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(
        //     Icons.person,
        //     color: kDarkColor,
        //   ),
        // ),
        title: Image.asset(
          "assets/icons/logodark.png",
          height: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: kDarkColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6.0, top: 5, bottom: 5),
            child: OpenContainer(
              transitionType: ContainerTransitionType.fadeThrough,
              transitionDuration: const Duration(milliseconds: 600),
              openElevation: 3,
              closedBuilder: (_, openContainer) {
                return Container(
                  height: 55.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                      color: kMainColor,
                      borderRadius: BorderRadius.circular(70)),
                  padding: const EdgeInsets.all(2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: SvgPicture.asset(
                      'assets/svgs/user.svg',
                    ),
                  ),
                );
              },
              // openColor: Colors.white,
              closedElevation: 50.0,
              closedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              // closedColor: Colors.white,
              openBuilder: (_, closeContainer) {
                return EditProfile();
              },
            ),
          )
        ],
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: ListView(
          children: [
            CarouselSlider(
              items: [
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/bg1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/bg2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/bg1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/bg2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/bg1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                    height: 75,
                    decoration: BoxDecoration(
                      color: kBrightColor,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: kMainColor.shade100,
                          offset: const Offset(
                            2.0,
                            2.0,
                          ),
                          blurRadius: 4.0,
                          spreadRadius: 0.5,
                        ), //BoxShadow
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "     Your Balance",
                                    style: h13HeadingBlackBold.copyWith(
                                        color: greyColor),
                                  ),
                                  const Icon(
                                    Icons.repeat_sharp,
                                    color: greyColor,
                                    size: 20,
                                  )
                                ],
                              ),
                              // const Text(
                              //   "Rs. 0.0",
                              //   style: h16HeadingBlackBold,
                              // ),
                              const Text(
                                "  =\$0,000  (USDT)",
                                style: h16HeadingBlackBold,
                              ),
                            ],
                          ),
                          Container(
                            height: 45,
                            width: 1,
                            color: greyColor.shade400,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Transaction\nHistory ",
                                style: h15HeadingBlackSimple,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              IconButton(
                                onPressed: (() =>
                                    Get.to(const TransactionHistory())),
                                icon: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: greenColor,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    Get.defaultDialog(
                      barrierDismissible: false,
                      title: "Payment By USDT",
                      titleStyle: h14HeadingBlackBold,
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                              color: greyColor,
                              child: const Text(
                                "CLOSE",
                                style: h12HeadingWhiteSimple,
                              ),
                              onPressed: () {
                                Get.back();
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MaterialButton(
                              color: greenColor,
                              child: const Text(
                                "NEXT",
                                style: h12HeadingWhiteSimple,
                              ),
                              onPressed: () {
                                Get.defaultDialog(
                                  title: "Deposit Confirm",
                                  content: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Investment Plans",
                                          ),
                                          MaterialButton(
                                            color: greenColor,
                                            child: const Text(
                                              "My Investments",
                                              style: h12HeadingWhiteSimple,
                                            ),
                                            onPressed: () {
                                              Get.back();
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Column(
                                        children: [
                                          RichText(
                                            textAlign: TextAlign.center,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'You have requested',
                                                  style: h12HeadingBlackSimple,
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {
                                                          // Single tapped.
                                                        },
                                                ),
                                                TextSpan(
                                                    text: ' 50 USD. ',
                                                    style: h12HeadingBlackSimple
                                                        .copyWith(
                                                            color: greenColor),
                                                    recognizer:
                                                        DoubleTapGestureRecognizer()
                                                          ..onDoubleTap = () {
                                                            // Double tapped.
                                                          }),
                                                TextSpan(
                                                  text: 'Please pay ',
                                                  style: h12HeadingBlackBold,
                                                  recognizer:
                                                      LongPressGestureRecognizer()
                                                        ..onLongPress = () {
                                                          // Long Pressed.
                                                        },
                                                ),
                                                TextSpan(
                                                  text: '50 USDT',
                                                  style: h12HeadingBlackBold
                                                      .copyWith(
                                                          color: greenColor),
                                                  recognizer:
                                                      LongPressGestureRecognizer()
                                                        ..onLongPress = () {
                                                          // Long Pressed.
                                                        },
                                                ),
                                                TextSpan(
                                                  text:
                                                      ' for successful payment',
                                                  style: h12HeadingBlackBold,
                                                  recognizer:
                                                      LongPressGestureRecognizer()
                                                        ..onLongPress = () {
                                                          // Long Pressed.
                                                        },
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Text(
                                              "Please follow the instruction below",
                                              textAlign: TextAlign.center,
                                              style: h16HeadingBlackBold,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              // await launch(userController.userGetter!.dynamicLink!);
                                            },
                                            onLongPress: () {
                                              Clipboard.setData(
                                                const ClipboardData(
                                                    text:
                                                        "U8vfgQtw79xb2Qljhs990A"),
                                              );
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                    content:
                                                        Text('Copied Link!')),
                                              );
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: kDarkColor,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      color: kDarkColor,
                                                    )
                                                  ]),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 10,
                                              ),
                                              child: const Text(
                                                "U8vfgQtw79xb2Qljhs990A",
                                                style: TextStyle(
                                                  color: kBrightColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "Network Tron (TRC20)",
                                            style: h14HeadingBlackBold,
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "PROOF *",
                                                textAlign: TextAlign.start,
                                                style: h13HeadingBlackBold,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              MaterialButton(
                                                color: greyColor,
                                                onPressed: () {},
                                                child: const Text(
                                                  "Choose file",
                                                  style: h13HeadingWhiteSimple,
                                                ),
                                              ),
                                              const Text(
                                                "  No file choosen",
                                                style: h13HeadingBlackSimple,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          MaterialButton(
                                            height: 50,
                                            minWidth: 120,
                                            color: greenColor,
                                            onPressed: () async {
                                              Get.back();
                                            },
                                            child: const Text(
                                              "PAY NOW",
                                              style: h14HeadingWhiteBold,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      ],
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Divider(),
                          Text(
                            "Deposit Limit: 20 - 50000 USD",
                            style:
                                h12HeadingBlackBold.copyWith(color: greyColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Charge: 0 USD",
                            style:
                                h11HeadingBlackBold.copyWith(color: greyColor),
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
                                  hintText: 'Enter Amount',
                                  hintStyle: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide:
                                          BorderSide(color: kMainColor)),
                                ),
                              ),
                            ),
                          ),
                          const Divider(),
                        ],
                      ),
                    );
                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  elevation: 5.0,
                  minWidth: 120.0,
                  height: 50,
                  color: kMainColor,
                  child: Row(
                    children: [
                      const Text(
                        'Deposit ',
                        style: TextStyle(fontSize: 16.0, color: kBrightColor),
                      ),
                      Image.asset(
                        "assets/icons/dep.png",
                        color: kSecondaryColor,
                        height: 18,
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Get.defaultDialog(
                      barrierDismissible: false,
                      title: "Withdraw Via USDT",
                      titleStyle: h14HeadingBlackBold,
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                              color: greyColor,
                              child: const Text(
                                "CLOSE",
                                style: h12HeadingWhiteSimple,
                              ),
                              onPressed: () {
                                Get.back();
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MaterialButton(
                              color: greenColor,
                              child: const Text(
                                "CONFIRM",
                                style: h12HeadingWhiteSimple,
                              ),
                              onPressed: () {
                                Get.defaultDialog(
                                  title: "Wallet Address",
                                  content: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Divider(),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 50,
                                          // padding: const EdgeInsets.symmetric(
                                          //     horizontal: 15, vertical: 0),
                                          decoration: BoxDecoration(
                                            color: kTextfieldColor,
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                spreadRadius: 1.0,
                                                color: kBlackColor
                                                    .withOpacity(0.05),
                                              ),
                                            ],
                                          ),
                                          child: const TextField(
                                            style: h14HeadingBlackSimple,
                                            keyboardType: TextInputType.text,
                                            decoration: InputDecoration(
                                              hintText: 'Enter Wallet Address',
                                              hintStyle: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                  borderSide: BorderSide(
                                                      color: kMainColor)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Divider(),
                                      MaterialButton(
                                        color: greenColor,
                                        child: const Text(
                                          "SUBMIT",
                                          style: h12HeadingWhiteSimple,
                                        ),
                                        onPressed: () {
                                          Get.back();
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      ],
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Divider(),
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
                                  hintText: 'Enter Amount',
                                  hintStyle: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide:
                                          BorderSide(color: kMainColor)),
                                ),
                              ),
                            ),
                          ),
                          const Divider(),
                        ],
                      ),
                    );
                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  elevation: 5.0,
                  minWidth: 120.0,
                  height: 50,
                  color: kMainColor,
                  child: Row(
                    children: [
                      const Text(
                        'Withdraw ',
                        style: TextStyle(fontSize: 16.0, color: kBrightColor),
                      ),
                      Image.asset(
                        "assets/icons/withdraw.png",
                        color: kSecondaryColor,
                        height: 18,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 10,
                children: [
                  DashboardCards(
                    ontap: (() => Get.to(const TrasnferMoney())),
                    icon: "assets/icons/mt.png",
                    label: " Money\nTransfer",
                  ),
                  DashboardCards(
                    ontap: () => Get.to(const PurchasedView()),
                    icon: "assets/icons/purchase.png",
                    label: "Purchased",
                  ),
                  DashboardCards(
                    ontap: (() => Get.to(const PlansView())),
                    icon: "assets/icons/plans.png",
                    label: "Plans",
                  ),
                  DashboardCards(
                    ontap: () async {
                      const urlPreview = 'https://www.google.com/';
                      await Share.share('Google LInk \n\n$urlPreview');
                    },
                    icon: "assets/icons/invite.png",
                    label: "Invite a\n Friend",
                  ),
                  DashboardCards(
                    ontap: (() => Get.to(const TransactionHistory())),
                    icon: "assets/icons/history.png",
                    label: "Earning\n History",
                  ),
                  DashboardCards(
                    ontap: _launchURL,
                    icon: "assets/icons/visit.png",
                    label: "Visit Site",
                  ),
                  // DashboardCards(
                  //   icon: "assets/icons/dep.png",
                  //   label: "Deposit",
                  // ),
                  // DashboardCards(
                  //   icon: "assets/icons/withdraw.png",
                  //   label: "Withdraw",
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://flutterdevs.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

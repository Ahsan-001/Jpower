import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:power/Screens/Authentication/signin.dart';

import 'package:power/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:power/Utils/colors.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  final isObsecure = true.obs;
  final isLoading = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrightColor,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back, color: Colors.black),
              )
            ],
          ),
          // SizedBox(height: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.jpg',
                height: 150,
              ),
              const Text(
                'Registration',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0, left: 35.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: kBrightColor,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        color: kBlackColor.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: name,
                    style: h14HeadingBlackSimple,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20.0),
                      hintText: 'First Name'.toUpperCase(),
                      hintStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0, left: 35.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: kBrightColor,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        color: kBlackColor.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: TextField(
                    // controller: email,
                    style: h14HeadingBlackSimple,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20.0),
                      hintText: 'Last Name'.toUpperCase(),
                      hintStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0, left: 35.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: kBrightColor,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        color: kBlackColor.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: email,
                    style: h14HeadingBlackSimple,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20.0),
                      hintText: 'Email / Phone'.toUpperCase(),
                      hintStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0, left: 35.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: kBrightColor,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        color: kBlackColor.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: TextField(
                    // controller: phone,
                    style: h14HeadingBlackSimple,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20.0),
                      hintText: 'Referral Code'.toUpperCase(),
                      hintStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0, left: 35.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: kBrightColor,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        color: kBlackColor.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: password,
                    style: h14HeadingBlackSimple,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20.0),
                      hintText: 'Password'.toUpperCase(),
                      hintStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0, left: 35.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: kBrightColor,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        color: kBlackColor.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: TextField(
                    style: h14HeadingBlackSimple,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20.0),
                      hintText: 'Confirm Password'.toUpperCase(),
                      hintStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Obx(() => InkWell(
                      onTap: () async {
                        Get.to(SignIn());
                      },
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: kRedColor),
                        child: isLoading.value
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text(
                                'Submit',
                                style: h14HeadingWhiteBold,
                              ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an Account?',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 11,
                        color: kRedColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

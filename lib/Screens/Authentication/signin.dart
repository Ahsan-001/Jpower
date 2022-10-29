import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:power/Screens/Authentication/change_password.dart';
import 'package:power/Screens/Authentication/otp.dart';
import 'package:power/Screens/Authentication/register.dart';
import 'package:power/Screens/UserHomeSection/homeview.dart';
import 'package:power/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:power/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:power/Utils/colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  // final rembermeController = Get.find<RembermeController>();
  final isObsecure = false.obs;

  final isLoading = false.obs;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: kBrightColor,
        body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/logo.jpg',
                          height: 200,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Sign in'.toUpperCase(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: TextField(
                          controller: email,
                          style: h14HeadingBlackSimple,
                          keyboardType: TextInputType.emailAddress,
                          // obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(Icons.email,
                                color: greyColor.withOpacity(0.4)),
                            contentPadding: const EdgeInsets.only(left: 10.0),
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(() => Padding(
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
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: TextField(
                              controller: password,
                              style: h14HeadingBlackSimple,
                              keyboardType: TextInputType.text,
                              obscureText: isObsecure.value,
                              decoration: InputDecoration(
                                suffixIcon: isObsecure.value
                                    ? IconButton(
                                        onPressed: () {
                                          print('pressednon');
                                          isObsecure.value = false;
                                        },
                                        icon: Icon(
                                          Icons.visibility_off,
                                          color: greyColor.withOpacity(0.4),
                                        ),
                                      )
                                    : IconButton(
                                        onPressed: () {
                                          print('pressed');
                                          isObsecure.value = true;
                                        },
                                        icon: Icon(
                                          Icons.remove_red_eye,
                                          color: greyColor.withOpacity(0.4),
                                        ),
                                      ),
                                icon: Icon(Icons.lock,
                                    color: greyColor.withOpacity(0.4)),
                                contentPadding:
                                    const EdgeInsets.only(left: 10.0),
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
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => OTPView()),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(right: 50.0),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontSize: 12,
                                color: kRedColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Obx(
                      () => InkWell(
                        onTap: () {
                          Get.to(HomeView());
                        },
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: kRedColor,
                          ),
                          child: isLoading.value
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : const Text(
                                  'LOG IN',
                                  style: h14HeadingWhiteBold,
                                ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an Account?',
                        style: TextStyle(fontSize: 11),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        child: const Text(
                          'Registration',
                          style: TextStyle(
                            fontSize: 11,
                            color: kRedColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

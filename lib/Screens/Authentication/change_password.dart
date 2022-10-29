import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:power/Utils/colors.dart';

// ignore: must_be_immutable
class ChangePassword extends StatelessWidget {
  ChangePassword({Key? key}) : super(key: key);
  var isLoading = false.obs;
  final TextEditingController password = TextEditingController();
  final TextEditingController newPassword = TextEditingController();
  final TextEditingController newRepeatPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kRedColor,
        title: const Text(
          "Change Password",
          style: TextStyle(fontSize: 20, color: kBrightColor),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/fPassword.png',
                    width: 150,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Change Password?",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: kBrightColor),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "You can change password here",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kDarkLightColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: password,
                      cursorColor: kDarkColor,
                      decoration: const InputDecoration(
                        fillColor: kDarkLightColor,
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.password,
                          color: kMainColor,
                        ),
                        hintText: 'Old Password',
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kDarkLightColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: newPassword,
                      cursorColor: kDarkColor,
                      decoration: const InputDecoration(
                        fillColor: kDarkLightColor,
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.password,
                          color: kMainColor,
                        ),
                        hintText: 'New Password',
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kDarkLightColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: newRepeatPassword,
                      cursorColor: kDarkColor,
                      decoration: const InputDecoration(
                        fillColor: kDarkLightColor,
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.password,
                          color: kMainColor,
                        ),
                        hintText: 'Re-enter New Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Obx(() => Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: kRedColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: isLoading.value
                            ? const CircularProgressIndicator()
                            : MaterialButton(
                                onPressed: () async {},
                                child: const Text(
                                  "Reset Password",
                                  style: TextStyle(
                                      color: kBrightColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                      )),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

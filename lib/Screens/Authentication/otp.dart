import 'package:custom_pin_entry_field/custom_pin_entry_field.dart';
import 'package:flutter/material.dart';
import 'package:power/Screens/Authentication/signin.dart';
import 'package:power/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:power/Utils/AppTextStyleAndColors/appTextStyle.dart';
import 'package:power/Utils/colors.dart';
import 'package:power/Widgets/textfield_widget.dart';

class OTPView extends StatefulWidget {
  const OTPView({Key? key}) : super(key: key);

  @override
  _OTPViewState createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrightColor,
      appBar: AppBar(
        backgroundColor: kMainColor,
        elevation: 0,
        centerTitle: true,
        title: Text("OTP Verification"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset("assets/images/otp.png"),
              // const Text(
              //   "OTP",
              //   style: h25HeadingBlackBold,
              // ),
              const Text(
                "Please enter the OTP that sent your mobile number / email",
                style: h13HeadingBlackSimple,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomPinEntryField(
                textStyle: h14HeadingBlackSimple,
                keyboard: TextInputType.number,
                showFieldAsBox: true,
                onSubmit: (String pin) {
                  showDialog(
                      useSafeArea: true,
                      // barrierColor: primaryColor,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Center(
                              child: Text("Pin",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ))),
                          content: Text('Pin entered is $pin'),
                        );
                      }); //end showDialog()
                }, // enend onSubmit
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Please enter new password to proceed with login",
                style: h13HeadingBlackSimple.copyWith(color: greyColor),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextfieldTitle1(
                title: "Enter New Password",
              ),
              const TextFieldWidget(),
              const SizedBox(
                height: 10,
              ),
              const TextfieldTitle1(
                title: "Repeat Password",
              ),
              const TextFieldWidget(),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn()));
                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  elevation: 5.0,
                  minWidth: 180.0,
                  height: 60,
                  color: kMainColor,
                  child: const Text(
                    'Confirm',
                    style: TextStyle(fontSize: 18.0, color: kBrightColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextfieldTitle1 extends StatelessWidget {
  final String? title;
  const TextfieldTitle1({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title!,
            style: h14HeadingBlackBold,
          ),
        ],
      ),
    );
  }
}

// Widget _textFieldOTP({required bool first, last}) {
//   return Container(
//     height: 85,
//     child: AspectRatio(
//       aspectRatio: 1.0,
//       child: TextField(
//         autofocus: true,
//         onChanged: (value) {
//           if (value.length == 1 && last == false) {
//             FocusScope.of(context).nextFocus();
//           }
//           if (value.length == 0 && first == false) {
//             FocusScope.of(context).previousFocus();
//           }
//         },
//         showCursor: false,
//         readOnly: false,
//         textAlign: TextAlign.center,
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         keyboardType: TextInputType.number,
//         maxLength: 1,
//         decoration: InputDecoration(
//           counter: Offstage(),
//           enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(width: 2, color: Colors.black12),
//               borderRadius: BorderRadius.circular(12)),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(width: 2, color: Colors.purple),
//               borderRadius: BorderRadius.circular(12)),
//         ),
//       ),
//     ),
//   );
// }

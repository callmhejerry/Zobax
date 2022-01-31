import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zobax/Screens/sign_up.dart';
import 'package:zobax/constants.dart';
import '../CustomWidget/zobax_button.dart';
import '../CustomWidget/zobax_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 33.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 69.h),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Log in to ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    TextSpan(
                      text: "Zobax",
                      style: TextStyle(
                        color: zobaxColor,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 74.h,
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/Images/Zobax.svg",
                  height: 280.h,
                  width: 348.w,
                ),
              ),
              SizedBox(
                height: 63.h,
              ),
              ZobaxTextField(controller: controller, hintText: "Email "),
              SizedBox(
                height: 24.h,
              ),
              ZobaxTextField(controller: controller, hintText: "Password"),
              SizedBox(
                height: 31.h,
              ),
              const ZobaxButton(label: "Log in"),
              SizedBox(
                height: 31.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dont have an account?  ",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

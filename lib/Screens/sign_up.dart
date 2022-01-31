import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zobax/constants.dart';
import '../CustomWidget/zobax_button.dart';
import '../CustomWidget/zobax_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                      text: "Sign up to ",
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
                  height: 260.h,
                  width: 348.w,
                ),
              ),
              SizedBox(
                height: 63.h,
              ),
              ZobaxTextField(controller: controller, hintText: "Username"),
              SizedBox(
                height: 24.h,
              ),
              ZobaxTextField(controller: controller, hintText: "Email "),
              SizedBox(
                height: 24.h,
              ),
              ZobaxTextField(controller: controller, hintText: "Password"),
              SizedBox(
                height: 31.h,
              ),
              const ZobaxButton(label: "Sign up"),
              SizedBox(
                height: 31.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Have an account?  ",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "Sign in",
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

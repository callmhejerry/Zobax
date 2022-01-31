// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zobax/constants.dart';

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

class ZobaxTextField extends StatelessWidget {
  const ZobaxTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 58.h,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: zobaxColor,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(
              color: Colors.white,
              style: BorderStyle.solid,
              width: 1,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(.50),
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class ZobaxButton extends StatelessWidget {
  final String label;
  const ZobaxButton({Key? key, required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: 58.h,
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: zobaxButtonColor,
          )),
    );
  }
}

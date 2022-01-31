import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

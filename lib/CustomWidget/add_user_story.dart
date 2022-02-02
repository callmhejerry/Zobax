import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class AddUserStory extends StatelessWidget {
  const AddUserStory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 64.r,
              width: 64.r,
              foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xffD528DB).withOpacity(.50),
                      zobaxColor.withOpacity(.50),
                    ],
                  )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/Images/jerry.JPG",
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "+",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        const Text(
          "You",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w200,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}

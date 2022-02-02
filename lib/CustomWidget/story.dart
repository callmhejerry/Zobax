import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../models.dart';

class Story extends StatelessWidget {
  final StoryModel story;
  const Story({Key? key, required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 13.w),
      width: 64.r,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 64.r,
            width: 64.r,
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(story.image),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                color: zobaxColor,
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            story.name,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w200,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}

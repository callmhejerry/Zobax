import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostImage extends StatelessWidget {
  const PostImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 309.h,
      width: 374.w,
      clipBehavior: Clip.antiAlias,
      child: Image.asset(
        "assets/Images/post.jpg",
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
      ),
    );
  }
}

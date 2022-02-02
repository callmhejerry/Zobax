import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostComment extends StatelessWidget {
  const PostComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.h,
      child: Text(
        "Alison #Lorem ipsum is a dummy text of the printing and typesetting industry, Lorem,Alison #Lorem ipsum is a dummy text of the printing and typesetting industry, Lorem",
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(
          color: Colors.white.withOpacity(.81),
          fontSize: 15,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}

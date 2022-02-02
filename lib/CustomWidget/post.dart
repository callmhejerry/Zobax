import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'post_comments.dart';
import 'post_header.dart';
import 'post_icons.dart';
import 'post_image.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PostHeader(),
        SizedBox(
          height: 20.h,
        ),
        const PostImage(),
        SizedBox(
          height: 18.h,
        ),
        const PostIcons(),
        SizedBox(
          height: 20.h,
        ),
        const PostComment(),
        Divider(
          color: Colors.white.withOpacity(.50),
          thickness: 1,
        ),
        SizedBox(
          height: 18.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "View all comments(4)",
              style: TextStyle(
                color: Colors.white.withOpacity(.50),
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 20,
                  color: Colors.white.withOpacity(.50),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "3 hours ago",
                  style: TextStyle(
                    color: Colors.white.withOpacity(.50),
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}

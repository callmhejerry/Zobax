import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostIcons extends StatelessWidget {
  const PostIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            SizedBox(
              width: 10.w,
            ),
            const Icon(
              Icons.comment,
              color: Colors.white,
            ),
            SizedBox(
              width: 10.w,
            ),
            const Icon(
              Icons.send,
              color: Colors.white,
            ),
          ],
        ),
        const Icon(
          Icons.bookmark_border,
          color: Colors.white,
        )
      ],
    );
  }
}

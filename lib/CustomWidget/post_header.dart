import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 44.r,
          width: 44.r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage("assets/Images/Jessica smith.jpg"),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
        SizedBox(
          width: 13.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Jessica smith",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            Text(
              "Ifite, Awka",
              style: TextStyle(
                color: Colors.white.withOpacity(.50),
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
        const Spacer(),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
            size: 26,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

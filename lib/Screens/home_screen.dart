import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zobax/constants.dart';
import 'package:zobax/data.dart';

import '../models.dart';
import '../CustomWidget/add_user_story.dart';
import '../CustomWidget/post.dart';
import '../CustomWidget/story.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final List<StoryModel> _stories = userStories
      .map((story) => StoryModel(image: story["image"]!, name: story["name"]!))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            const Icon(
              Icons.message_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 20.w,
            )
          ],
          leading: const Icon(
            Icons.camera_alt_rounded,
            color: Colors.white,
          ),
        ),
        preferredSize: Size.fromHeight(67.h),
      ),
      backgroundColor: kbackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            //   height: 8.h,
            // ),
            SingleChildScrollView(
              padding: EdgeInsets.only(right: 20.w),
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 24.w,
                  ),
                  const AddUserStory(),
                  ..._stories.map((story) => Story(story: story)).toList(),
                ],
              ),
            ),
            SizedBox(
              height: 16.5.h,
            ),
            Divider(
              color: Colors.white.withOpacity(.50),
              thickness: 1,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(children: const [
                  Post(),
                  Post(),
                  Post(),
                  Post(),
                  Post(),
                ]))
          ],
        ),
      ),
    );
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      decoration: BoxDecoration(
        color: const Color(0xff4B4646).withOpacity(.50),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(
            Icons.home_rounded,
            color: Colors.white,
            size: 25,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Icon(
            Icons.videocam_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

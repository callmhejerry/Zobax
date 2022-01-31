import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zobax/constants.dart';

import 'Screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'Zobax',
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        home: const SignUpScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: kbackgroundColor,
          fontFamily: "Poppins",
        ),
      ),
      designSize: const Size(414, 869),
    );
  }
}

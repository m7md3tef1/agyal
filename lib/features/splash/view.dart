import 'package:agyal/core/constants/colors.dart';
import 'package:agyal/features/introduction/view.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/images.dart';
part 'units/Animeted_splah.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryBlue,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: SizedBox()),
                Align(
                  child: AnimatedSplash(),
                  alignment: Alignment.center,
                ),
                Expanded(
                  child: SizedBox(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              powered,
                              SizedBox(
                                height: 27.h,
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

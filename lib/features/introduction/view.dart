import 'dart:ui';

import 'package:agyal/core/constants/colors.dart';
import 'package:agyal/core/router/router.dart';
import 'package:agyal/features/introduction/controller.dart';
import 'package:agyal/features/introduction/model.dart';
import 'package:agyal/widgets/custom_button.dart';
import 'package:agyal/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../sign_in/view.dart';
part 'units/button_skip.dart';
part 'units/page_veiw.dart';
part 'units/smooth_page_indicator.dart';

class IntroView extends StatelessWidget {
  final controller = PageController(viewportFraction: 1.1, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: CustomText(
            text: 'English',
            color: Colors.black,
            fontSize: 19.sp,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            Provider.of<IndexProv>(context).pageIndex != 0
                ? Padding(
                    padding:
                        EdgeInsetsDirectional.only(start: 10.sp, end: 10.sp),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 22,
                    ),
                  )
                : const SizedBox()
          ],
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                CustomColumn(controller: controller),
                SizedBox(height: 20.h)
              ],
            ),
          ),
        ));
  }
}

class CustomColumn extends StatelessWidget {
  const CustomColumn({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 120.h,
        ),
        Pageview(
          controller: controller,
        ),
        SizedBox(
          height: 60.h,
        ),
        SmoothIndicator(controller),
        SizedBox(
          height: 50.h,
        ),
        SkipButton(controller),
      ],
    );
  }
}

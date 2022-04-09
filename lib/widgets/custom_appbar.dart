import 'package:agyal/features/introduction/controller.dart';
import 'package:agyal/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  String? text;
  var icon;
  CustomAppbar({Key? key,this.text,this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: CustomText(
        text: text,
        color: Colors.black,
        fontSize: 19.sp,
        fontWeight: FontWeight.bold,
      ),
      actions: [
        Padding(
                padding: EdgeInsetsDirectional.only(start: 10.sp, end: 10.sp),
                child:  Icon(
                  icon,
                  color: Colors.black,
                ),
              )
      ],
    );
  }
}

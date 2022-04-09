import 'package:agyal/core/constants/colors.dart';
import 'package:flutter/material.dart';
//import 'package:sizer/sizer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomText extends StatelessWidget {
  String? text;
  Color? color;
  var fontSize;
  var fontWeight;

  CustomText({required this.text,  this.color=black,required this.fontSize,this.fontWeight=FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.tajawal(fontSize: fontSize,fontWeight: fontWeight,color: color,),
      textDirection: TextDirection.rtl,
      maxLines: 4,
      textAlign: TextAlign.center,
    );
  }
}
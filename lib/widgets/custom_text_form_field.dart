import 'package:agyal/core/constants/colors.dart';
import 'package:agyal/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormField extends StatelessWidget {
  String? name;
  String? hint;
  var icondata;
  var iconquation;
  var suffix;
  var color;
  bool? secure;
  var validator;
  var onSaved;
  var keyboardType = TextInputType.visiblePassword;

  TextEditingController? controller;
  CustomTextFormField(
      {Key? key,
      this.name,
      this.iconquation,
      this.color,
      required this.keyboardType,
      this.controller,
      this.hint,
      this.icondata,
      this.secure,
      this.suffix,
      this.validator,
      this.onSaved})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: CustomText(
            text: name,
            color: black,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 57.h,
          decoration: BoxDecoration(
              color: white, borderRadius: BorderRadius.circular(15.r)),
          child: TextFormField(
            controller: controller,
            onSaved: onSaved!,
            validator: validator,
            obscureText: secure!,
            autofocus: false,
            textDirection: TextDirection.rtl,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              labelText: hint,
              prefixIcon: suffix,
              suffixIcon: icondata,
              fillColor: white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.r),
                borderSide: BorderSide.none,
              ),
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}

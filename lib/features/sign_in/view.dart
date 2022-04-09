import 'dart:ui';
import 'package:agyal/core/constants/colors.dart';
import 'package:agyal/core/constants/images.dart';
import 'package:agyal/core/router/router.dart';
import 'package:agyal/core/validator/validator.dart';
import 'package:agyal/features/sign_in/states.dart';

import 'package:agyal/widgets/custom_text.dart';
import 'package:agyal/widgets/custom_text_form_field.dart';
import 'package:agyal/widgets/logo_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../forget_pass/view.dart';
import 'cubit.dart';
part 'units/feilds.dart';
part 'units/forget_pass.dart';
part 'units/button.dart';
part 'units/contact.dart';
part 'units/skip.dart';
class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: CustomText(
          text: 'English',
          color: Colors.black,
          fontSize: 19.sp,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 10.sp, end: 10.sp),
            child:  const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea
          (
          child: Column(
            children: [
              const  LogoApp(),
              Padding(
                padding:  EdgeInsets.only(top: 61.h,bottom: 30.h),
                child: CustomText(text: 'تسجيل الدخول', color: black, fontWeight: FontWeight.bold,fontSize: 22.sp,),
              ),
              SignInFeild(),
              const Forget(),
              const SignInButton(),
             const  SignInContact(),
              SignSkip()
            ],
          ),
        ),
      ),
    );
  }
}

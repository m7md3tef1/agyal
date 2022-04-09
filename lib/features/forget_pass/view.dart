import 'package:agyal/core/constants/colors.dart';
import 'package:agyal/core/validator/validator.dart';
import 'package:agyal/widgets/custom_button.dart';
import 'package:agyal/widgets/custom_text.dart';
import 'package:agyal/widgets/custom_text_form_field.dart';
import 'package:agyal/widgets/logo_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'units/forget_pass_text.dart';
part 'units/button.dart';
part 'units/fields.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      body: Column(
        children:const [
          LogoApp(),
          TextForget(),
          Feilds(),
          Button(),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding:  EdgeInsets.only(top: 42.h),
        child: Image.asset('image/logoBlue.png',height:80.h ,width:170.w ,fit: BoxFit.contain,),
      ),
    );
  }
}

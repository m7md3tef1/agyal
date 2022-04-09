part of'../view.dart';

class SignSkip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 40.h,bottom: 40.h,right: 25.h),
      child: Align(alignment: Alignment.centerRight,
        child: Container(
          child: InkWell(
              onTap: (){
            //    MagicRouter.navigateAndPopAll(Home());
              },
              child: CustomText(fontSize: 15.sp,text: 'تخطي', color: primaryBlue,fontWeight: FontWeight.bold,)),
        ),
      ),
    );
  }
}
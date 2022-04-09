
part of'../view.dart';
class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:30.h,bottom: 15.h),
      child:
      InkWell(
        onTap: (){

        },
        child: Container(
            width: 325,
            height: 58.h,
            decoration: BoxDecoration(
              color: primaryBlue,
              borderRadius: BorderRadius.circular(15.r),

            ),
            child: Center(child: CustomText(text: 'تسجيل الدخول',color:  Colors.white,fontSize: 15.sp,))),
      ),
    );
  }
}

part of'../view.dart';

class Forget extends StatelessWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 10.h,bottom: 30.h,right:14.w ),
      child: Align(alignment: Alignment.centerRight,
        child: Container(
          child: InkWell(
              onTap: (){
                MagicRouter.navigateTo(const ForgetPass());
              },
              child: CustomText(fontSize: 10.sp,text: 'هل نسيت كلمه المرور؟', color: primaryBlue,)),
        ),
      ),
    );
  }
}

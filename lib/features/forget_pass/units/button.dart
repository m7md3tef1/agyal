part of'../view.dart';
class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:30.h,bottom: 30.h,right: 25.w,left: 25.w),
      child: CustomButton(function: (){}, text: 'ارسال'),
    );
  }
}

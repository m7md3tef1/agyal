
part of'../view.dart';
class TextForget extends StatelessWidget {
  const TextForget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: EdgeInsets.only(top: 61.h, bottom: 30.h),
      child: CustomText(
          text:
              'من فضلك ادخل رقم الجوال حتى تتمكن من تغيير\nكلمة المرور الخاصة بك',
          color: black,
          fontSize: 12.sp),
    ));
  }
}

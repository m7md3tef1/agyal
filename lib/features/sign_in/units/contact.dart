
part of'../view.dart';

class SignInContact extends StatelessWidget {
  const SignInContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.h, bottom: 20.h),
            child: Center(
              child: Row(children: [
                Expanded(
                    child: Divider(
                  color: Colors.grey,
                  endIndent: 10.sp,
                )),
                CustomText(
                  text: 'للتواصل معنا',
                  color: black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
                Expanded(
                    child: Divider(
                  color: Colors.grey,
                  indent: 10.sp,
                )),
              ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 60.w,
              ),
              Expanded(child: msg),
              SizedBox(
                width: 40.w,
              ),

              Expanded(child: twitter),
              SizedBox(
                width: 40.w,
              ),

              Expanded(child: instagram),
              SizedBox(
                width: 40.w,
              ),
              facebook,
              SizedBox(
                width: 60.w,
              ),
            ],
          )
        ],
      ),
    );
  }
}

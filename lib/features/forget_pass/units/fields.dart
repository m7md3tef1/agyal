part of'../view.dart';
class Feilds extends StatelessWidget {
  const Feilds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.w, left: 25.w, bottom: 30.h, top: 30),      child: CustomTextFormField(name: 'رقم الجوال',
        secure: true,
        validator: Validator.validatePhone,
        onSaved: (v) {}, keyboardType: TextInputType.phone ,
        hint: '01020304050',
      ),
    );
  }
}

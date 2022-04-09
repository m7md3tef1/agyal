part of '../view.dart';

class SignInFeild extends StatelessWidget {
  var email;
  var password;
  bool  obscure=false;
  bool passwordVisible = true;
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  SignInFeild({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: SignInCubit.get(context).formKey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 25.w, left: 25.w ,top: 30),
            child: CustomTextFormField(
              name: 'ادخال الايميل',
              controller: controllerEmail,
              validator:  Validator.validateEmail,
              onSaved: (v) {},
              secure: false,
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          BlocConsumer<SignInCubit,SignInStates>(
            listener: (BuildContext context, state) {  },
            builder: ( context, state){
              if(state is SignInObscure){
                obscure=SignInCubit.get(context).isObscure;
              }
              return Padding(
                padding: EdgeInsets.only(right: 25.w, left: 25.w ,top: 30),
                child: CustomTextFormField(
                  name: 'ادخال رقم المرور',
                  controller: controllerPass,
                  onSaved: (v) {},
                  validator: Validator.validatePassword,
                  suffix: InkWell(
                    onTap: (){
                      SignInCubit.get(context).obscure();
                    },
                    child: Icon(
                        obscure ? Icons.visibility : Icons.visibility_off),
                  ),

                  secure: obscure,
                  keyboardType: TextInputType.visiblePassword,
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}

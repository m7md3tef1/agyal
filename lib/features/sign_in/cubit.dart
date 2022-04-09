import 'package:agyal/features/sign_in/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignInCubit extends Cubit<SignInStates>{
  SignInCubit() : super(SignInLoading());

  static SignInCubit get(context) => BlocProvider.of(context);


  final formKey = GlobalKey<FormState>();
  bool isObscure=false;

  signIn()  {
    emit(SignInLoading());

    if(!formKey.currentState!.validate()) return null;
    formKey.currentState!.save();

    emit(SignInInitial());


  }

  obscure(){
    isObscure=!isObscure;
    emit(SignInObscure());
    return isObscure;



  }



}
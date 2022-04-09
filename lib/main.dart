import 'package:agyal/core/constants/colors.dart';
import 'package:agyal/core/router/router.dart';
import 'package:agyal/features/introduction/controller.dart';
import 'package:agyal/features/sign_in/cubit.dart';
import 'package:agyal/features/splash/view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(DevicePreview(
      enabled: true,
      builder: (context) =>  MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => IndexProv()),
      ],

          child: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MultiProvider(
        providers: [
          BlocProvider(create:(_) =>  SignInCubit())
        ],
        child: ScreenUtilInit(

          designSize: const Size(375 , 812),

          minTextAdapt: true,
          splitScreenMode: true,

          builder: () =>
              MaterialApp(

                title: 'Flutter Demo',

                theme: ThemeData(
                  primaryColor: primaryBlue,

                ),
                debugShowCheckedModeBanner: false,
                navigatorKey: navigatorKey,
                onGenerateRoute: onGenerateRoute,
                useInheritedMediaQuery: true,
                locale: DevicePreview.locale(context),


                home:SplashView(),

              ),
        ),
      );
  }
}
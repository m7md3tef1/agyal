part of'../view.dart';

class AnimatedSplash extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        width: double.infinity,
        height: 72.h,

        child: AnimatedSplashScreen(
          centered: true,
          duration: 4000,
          splash: logo,
          nextScreen: IntroView(),
          splashTransition: SplashTransition.fadeTransition,
          // pageTransitionType: PageTransitionType.scale,
          backgroundColor: primaryBlue,
        ),
      ),
    );
  }
}
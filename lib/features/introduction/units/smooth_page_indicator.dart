part of'../view.dart';

class SmoothIndicator extends StatelessWidget {
  var controller;

  SmoothIndicator(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: introList.length,
      effect: ExpandingDotsEffect(
        dotHeight: 6.h,
        dotWidth: 8.w,
        activeDotColor: orange,
        // strokeWidth: 5,
      ),
    );

  }
}
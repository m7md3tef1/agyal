
part of'../view.dart';

class SkipButton extends StatelessWidget {
  var controller;

  SkipButton(this.controller);

  @override
  Widget build(BuildContext context) {

    if(Provider.of<IndexProv>(context).pageIndex==2){
      return
        CustomButton(function: (){
          MagicRouter.navigateTo(SignIn());
        } ,text: 'ابدا الان',
          width: 201.w,
        );


    }else{
      return
        InkWell(
          onTap: (){
            controller.jumpToPage(2);
          },
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: 201.w,
                height: 45.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: primaryBlue)

                ),
                child: Center(child: CustomText(text: 'تخطي',color:  primaryBlue,fontSize: 15.sp,))),
          ),
        );

    }

  }
}
part of'../view.dart';

class Pageview extends StatelessWidget {
  var controller;
  static int indexpage=0;

  Pageview({this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 27.w),
      child: Center(
        child: Container(
          width: double.infinity,
          height: 340.h,
          child: PageView.builder(
              onPageChanged: (index){
                Provider.of<IndexProv>(context,listen: false).getIndex(index);
                print(Provider.of<IndexProv>(context,listen: false).pageIndex);
                print('nnnnnnnnn');
              },
              controller: controller,
              itemCount:3,
              itemBuilder: (_, index){
                indexpage=index;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(introList[index].img!,height: 202.h,width: 322.w,fit:BoxFit.contain,),
                    SizedBox(height: 40.h,),
                    Expanded(
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 27.w),
                        child: Container(
                          // height:78.h ,
                            width: double.infinity,
                            child: Center(child: CustomText(text:introList[index].text! ,color: primaryBlue,fontSize: 18.sp,))                    ),
                    ),


)
                  ],);
              }),
        ),
      ),
    );

  }
}
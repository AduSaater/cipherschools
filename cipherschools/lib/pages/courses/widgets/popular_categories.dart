import 'package:cipherschools/exports.dart';
class PopularCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 180.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.kWhite,
      ),
      child: Column(
        children: [
          Image.asset("assets/course1.png", fit: BoxFit.cover, height: 90.h,),
          ScreenUtil().setVerticalSpacing(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text("App Development", style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: AppColors.kDarkColor
            ),),
          ),
          ScreenUtil().setVerticalSpacing(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Container(
              height: 40.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: AppColors.kDeepYellow,
              ),
              child: Center(
                child: Text("Add to Interest", style: GoogleFonts.montserrat(
                  color: AppColors.kWhite,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

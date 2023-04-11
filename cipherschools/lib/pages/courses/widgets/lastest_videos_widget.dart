import 'package:cipherschools/exports.dart';
class LastestVideos extends StatelessWidget {
  final String title;
  final  String text;
  final  String desc1;
  final String asset;
  final String author;
  final String course;
  LastestVideos({
    required this.title,
    required this.text,
    required this.desc1,
    required this.asset,
    required this.author,
    required this.course
  });
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 260.w,
      width: 180.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.kWhite
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("${asset}", fit: BoxFit.cover, height: 100.h,width: 1.sw,),
          ScreenUtil().setVerticalSpacing(5.h),
          Row(
            children: [
              Expanded(
                flex: 7,
                child: Container(
                  height: 20.h,

                  decoration: BoxDecoration(
                    color: AppColors.kLightYellow,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4.r),
                      bottomRight:  Radius.circular(4.r),
                    ),

                  ),
                  child: Center(
                    child: Text("${text}", style: GoogleFonts.montserrat(
                      color: AppColors.kDeepYellow,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      fontSize: 12.sp,
                    ),),
                  ),

                ),
              ),
              Expanded(
                  flex: 3,
                  child: Text("")),
            ],
          ),
          ScreenUtil().setVerticalSpacing(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text("${title}", style: GoogleFonts.montserrat(
              fontSize: 14.sp,
              color: AppColors.kDarkColor,
              fontWeight: FontWeight.w300,

            ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          ScreenUtil().setVerticalSpacing(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text("${desc1}", style: GoogleFonts.montserrat(
              fontSize: 14.sp,
              color: AppColors.kDarkColor,
              fontWeight: FontWeight.w200,
            ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          ScreenUtil().setVerticalSpacing(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              children: [
                 Row(
                   children: [
                     CircleAvatar(
                       backgroundColor: AppColors.kDarkColor,
                       radius: 20.r,
                       child:Center(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("C", style: GoogleFonts.montserrat(
                                 fontSize: 30.sp,
                                 color: AppColors.kDeepYellow,
                                 fontWeight: FontWeight.w600,
                                 fontStyle: FontStyle.normal
                             ),
                             ),
                             ScreenUtil().setHorizontalSpacing(2),
                             Text(";", style: GoogleFonts.montserrat(
                                 fontSize: 20.sp,
                                 color: AppColors.kWhite,
                                 fontWeight: FontWeight.w600,
                                 fontStyle: FontStyle.normal
                             ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
                ScreenUtil().setHorizontalSpacing(5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${author}", style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w300,
                      color: AppColors.kDarkColor,
                      fontSize: 14.sp,
                    ),),
                    ScreenUtil().setVerticalSpacing(5),
                    Text("${course}", style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                      fontSize: 14.sp,
                    ),),
                  ],
                ),
              ],
            ),
          ),
          ScreenUtil().setVerticalSpacing(10),
        ],
      ),
    );
  }
}

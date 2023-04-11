
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipherschools/exports.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int homeImageSliderIndex = 0;
  int _index = 0;
  changeHomeImageSliderIndex(int index) {
    homeImageSliderIndex = index;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Color.fromARGB(255, 247, 247, 249),
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: AppColors.kWhite,
        title: Row(
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
            ScreenUtil().setHorizontalSpacing(5),
            Text("CipherSchools", style: GoogleFonts.montserrat(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: AppColors.kDarkColor
            ),
            ),

          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Icon(Icons.menu, color: AppColors.kDarkColor,),
          ),
        ],
      ),
       body: ListView(
         padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
         children: [
           //Welcome text
           Column(
          mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Welcome to", style: GoogleFonts.montserrat(
                     fontStyle: FontStyle.normal,
                     fontWeight: FontWeight.w400,
                     fontSize: 30.sp,
                     color: AppColors.kDarkColor,
                   ),

                   ),
                   ScreenUtil().setHorizontalSpacing(10),
                   Text("the", style: GoogleFonts.montserrat(
                     fontStyle: FontStyle.normal,
                     fontWeight: FontWeight.w400,
                     fontSize: 30.sp,
                     color: AppColors.kDeepYellow,
                   ),
                   ),
                 ],
               ),
               ScreenUtil().setVerticalSpacing(10),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Future", style: GoogleFonts.montserrat(
                     fontStyle: FontStyle.normal,
                     fontWeight: FontWeight.w600,
                     fontSize: 30.sp,
                     color: AppColors.kDeepYellow,
                   ),
                   ),
                   ScreenUtil().setHorizontalSpacing(10),
                   Text("of Learning!", style: GoogleFonts.montserrat(
                     fontStyle: FontStyle.normal,
                     fontWeight: FontWeight.w600,
                     fontSize: 30.sp,
                     color: AppColors.kDarkColor,
                   ),
                   ),
                 ],
               ),
               ScreenUtil().setVerticalSpacing(20),
               Center(
                 child: Text("Start Learning by best creators for", style: GoogleFonts.montserrat(
                   fontSize: 18.sp,
                   fontWeight: FontWeight.w300,
                   color: AppColors.kGreyColor1,
                 ),
                   textAlign: TextAlign.center,
                 ),
               ),
               ScreenUtil().setVerticalSpacing(10),
               Center(
                 child: AnimatedTextKit(
                   animatedTexts: [
                     TypewriterAnimatedText(

                       'absolutely Free',
                       textStyle: TextStyle(
                         fontSize: 20.sp,
                         fontWeight: FontWeight.w600,
                         color: AppColors.kDeepYellow
                       ),
                       speed: const Duration(milliseconds: 100),
                     ),
                   ],
                   repeatForever: true,
                   isRepeatingAnimation: true,
                   pause: const Duration(milliseconds: 100),
                   displayFullTextOnTap: true,
                   stopPauseOnTap: true,
                 ),
               )
             ],
           ),
           ScreenUtil().setVerticalSpacing(20),

           Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 height: 100.h,
                width: 120.w,
                 child: Stack(
                   children: [
                     Positioned(
                       left:0.0,
                       child: Image.asset("assets/u1.png"),
                     ),
                     Positioned(
                       left:30.0,
                       child: Image.asset("assets/u2.png"),
                     ),
                     Positioned(
                       left:60.0,
                       child: Image.asset("assets/u3.png"),
                     ),

                   ],
                 ),
               ),
               ScreenUtil().setHorizontalSpacing(5),
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("50+",style: GoogleFonts.montserrat(
                     fontWeight: FontWeight.w600,
                     fontSize: 16.sp,
                     fontStyle: FontStyle.normal,
                     color: AppColors.kDarkColor
                   ),
                   ),
                   ScreenUtil().setVerticalSpacing(10),
                   Text("Mentors",style: GoogleFonts.montserrat(
                       fontWeight: FontWeight.w600,
                       fontSize: 14.sp,
                       fontStyle: FontStyle.normal,
                       color: AppColors.kGreyColor1
                   ),
                   ),
                 ],
               ),
               ScreenUtil().setHorizontalSpacing(5),
               VerticalDivider(
                 color: Colors.grey,
                 thickness: 2,
               ),
               ScreenUtil().setHorizontalSpacing(5),
               Column(
                 children: [
                   Text("4.8/5",style: GoogleFonts.montserrat(
                     fontStyle: FontStyle.normal,
                     fontSize: 16.sp,
                     color: AppColors.kDarkColor,
                     fontWeight: FontWeight.w600,
                   ),
                   ),
                   Row(
                     children: [
                       RatingBarIndicator(
                         rating: 4.8,
                         itemBuilder: (context, index) => Icon(
                           Icons.star,
                           color: AppColors.kDeepYellow,
                         ),
                         itemCount: 5,
                         itemSize: 15.w,
                         direction: Axis.horizontal,
                         unratedColor: AppColors.kGreyColor1,
                       ),
                       ScreenUtil().setHorizontalSpacing(5),
                       Text("Ratings",style: GoogleFonts.montserrat(
                         fontWeight: FontWeight.w600,
                         fontSize: 16.sp,
                         color: AppColors.kGreyColor1
                       ),
                       ),
                     ],
                   ),
                 ],
               ),
             ],
           ),
           //ScreenUtil().setVerticalSpacing(20),
           Center(
             child: Container(
               height: 50.h,
               width: 200.w,
               decoration: BoxDecoration(
                 color: AppColors.kDeepYellow,
                 borderRadius: BorderRadius.circular(6.r),

               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Start Learning Now", style: GoogleFonts.montserrat(
                     color: AppColors.kWhite,
                     fontSize: 16.sp,
                     fontWeight: FontWeight.w600,
                   ),),
                   ScreenUtil().setHorizontalSpacing(10),
                   Icon(Icons.arrow_forward, color: AppColors.kWhite,)
                 ],
               ),
             ),
           ),
           ScreenUtil().setVerticalSpacing(20),
           CarouselSlider(
             options: CarouselOptions(
               aspectRatio: 343 / 160,
               //viewportFraction: 1,
               autoPlay: true,
               onPageChanged: ((index, reason) {
                 _index = index;
                 changeHomeImageSliderIndex(index);
               }),
             ),
             items: [
               0,
               1,
               2,
             ].map((i) {
               return Builder(
                 builder: (BuildContext context) {
                   return Flexible(
                     child: Container(
                       child: ClipRRect(

                         child: Image.asset(
                           'assets/course${i}.png',
                           width: MediaQuery.of(context).size.width,

                           fit: BoxFit.cover,

                         ),
                       ),
                     ),
                   );
                 },
               );
             }).toList(),
           ),
           ScreenUtil().setVerticalSpacing(20),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 16.w),
                 child: Row(

                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       children: [
                         Text("15K+", style: GoogleFonts.montserrat(
                           color: AppColors.kDeepYellow,
                           fontWeight: FontWeight.w600,
                           fontSize: 20.sp
                         ),),
                         ScreenUtil().setVerticalSpacing(10),
                         Text("Students", style: GoogleFonts.montserrat(
                             color: AppColors.kDarkColor,
                             fontWeight: FontWeight.w600,
                             fontSize: 16.sp
                         ),),
                       ],
                     ),
                     Column(
                       children: [
                         Text("10K+", style: GoogleFonts.montserrat(
                             color: AppColors.kDeepYellow,
                             fontWeight: FontWeight.w600,
                             fontSize: 20.sp
                         ),),
                         ScreenUtil().setVerticalSpacing(10),
                         Text("Certificates delivered", style: GoogleFonts.montserrat(
                             color: AppColors.kDarkColor,
                             fontWeight: FontWeight.w600,
                             fontSize: 16.sp
                         ),),
                       ],
                     ),
                   ],
                 ),
               ),

               //////////////////////////
               ScreenUtil().setVerticalSpacing(10),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 16.w),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       children: [
                         Text("45K+", style: GoogleFonts.montserrat(
                             color: AppColors.kDeepYellow,
                             fontWeight: FontWeight.w600,
                             fontSize: 20.sp
                         ),),
                         ScreenUtil().setVerticalSpacing(10),
                         Text("Streamed minutes", style: GoogleFonts.montserrat(
                             color: AppColors.kDarkColor,
                             fontWeight: FontWeight.w600,
                             fontSize: 14.sp
                         ),),
                       ],
                     ),
                     Column(
                       children: [
                         Text("12TB+", style: GoogleFonts.montserrat(
                             color: AppColors.kDeepYellow,
                             fontWeight: FontWeight.w600,
                             fontSize: 20.sp
                         ),),
                         ScreenUtil().setVerticalSpacing(10),
                         Text("Content streamed in\n        last 60 days", style: GoogleFonts.montserrat(
                             color: AppColors.kDarkColor,
                             fontWeight: FontWeight.w600,
                             fontSize: 14.sp
                         ),),
                       ],
                     ),
                   ],
                 ),
               ),
               //////////////
               ScreenUtil().setVerticalSpacing(10),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 16.w),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       children: [
                         Text("50K+", style: GoogleFonts.montserrat(
                             color: AppColors.kDeepYellow,
                             fontWeight: FontWeight.w600,
                             fontSize: 20.sp
                         ),),
                         ScreenUtil().setVerticalSpacing(10),
                         Text("Creators", style: GoogleFonts.montserrat(
                             color: AppColors.kDarkColor,
                             fontWeight: FontWeight.w600,
                             fontSize: 14.sp
                         ),),
                       ],
                     ),
                     Column(
                       children: [
                         Text("110+", style: GoogleFonts.montserrat(
                             color: AppColors.kDeepYellow,
                             fontWeight: FontWeight.w600,
                             fontSize: 20.sp
                         ),),
                         ScreenUtil().setVerticalSpacing(10),
                         Text("Programs available", style: GoogleFonts.montserrat(
                             color: AppColors.kDarkColor,
                             fontWeight: FontWeight.w600,
                             fontSize: 14.sp
                         ),),
                       ],
                     ),
                   ],
                 ),
               ),
             ],
           ),
          ScreenUtil().setVerticalSpacing(20),
         ],
       ),
    );
  }
}

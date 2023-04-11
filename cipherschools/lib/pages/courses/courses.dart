import 'package:cipherschools/exports.dart';

class CoursesScreen extends StatefulWidget {
  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  List<Widget> images= [
    Image.asset('assets/mern.jpg'),
    Image.asset('assets/image2.png'),
    Image.asset('assets/image1.png'),
    Image.asset('assets/image2.png'),

  ];
  var  pageController = PageController();
  int _index = 0;
  changeImageSliderIndex(int index) {
    _index = index;
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
            child: Icon(Icons.search, color: AppColors.kDarkColor,),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Icon(Icons.notifications, color: AppColors.kDarkColor,),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 200.h,
            child: Stack(
              children: [
                PageView.builder(
                    controller:pageController,
                    itemCount: 4,
                    onPageChanged: (index){
                      _index = index;
                      changeImageSliderIndex(index);
                    },
                    itemBuilder: (context, index){
                  return Stack(
                    children: [
                      Image.asset("assets/course${index}.png", height: 200.h, width: 1.sw, fit: BoxFit.cover,),

                    ],
                  );
                }
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Positioned(
                    bottom: 10.h,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 18.0, top: 10,),
                      child: Container(
                        height: 20.h,
                        alignment: Alignment.center,
                        child: ListView.builder(
                            itemCount: 4,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AnimatedContainer(
                                    width: 8.w,
                                    height: 8.h,
                                    duration: Duration(seconds: 1),
                                    margin: EdgeInsets.all(4.h),
                                    decoration: BoxDecoration(
                                        color: _index ==
                                            index
                                            ? AppColors.kDeepYellow
                                            : Color(0xffC7C7CD),
                                        borderRadius:
                                        BorderRadius.circular(5.h)),
                                    padding: EdgeInsets.all(
                                        _index == index ? 0 : 4.h),
                                  )
                                ],
                              );
                            }),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ScreenUtil().setVerticalSpacing(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recommended Courses", style: GoogleFonts.montserrat(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: AppColors.kDarkColor,
                ),
                ),

              ],
            ),
          ),
          ScreenUtil().setVerticalSpacing(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Container(
              width: 1.sw,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                 RecommendedWidget(
                     title: "FREE IELTS/TOEFL...",
                     text: "Languify",
                     desc1: "AI generated feedback...",
                     desc2: "Test Duration:30mins/3...",
                     asset: "assets/image1.png",
                     asset1: "assets/u1.png",
                     author: "Languify",
                     course: "express & excel"
                 ),
                    ScreenUtil().setHorizontalSpacing(10),
                    RecommendedWidget(
                        title: "JavaScript(JS)",
                        text: "Web Development",
                        desc1: "No. of videos: 36",
                        desc2: "Course time: 5.1 hours",
                        asset: "assets/javascript.jpg",
                        asset1: "assets/u2.png",
                        author: "Shruti Codes",
                        course: "Instructor"
                    ),
                    ScreenUtil().setHorizontalSpacing(10),
                    RecommendedWidget(
                        title: "Hyper Text Marku...",
                        text: "Web Development",
                        desc1: "No. of videos: 21",
                        desc2: "Course time: 2.0 hours",
                        asset: "assets/mern.jpg",
                        asset1: "assets/u2.png",
                        author: "Shruti Codes",
                        course: "Instructor"
                    ),
                    ScreenUtil().setHorizontalSpacing(10),
                    RecommendedWidget(
                        title: "Web Development",
                        text: "Web Development",
                        desc1: "No. of videos: 138",
                        desc2: "Course time: 21.8 hours",
                        asset: "assets/mern.jpg",
                        asset1: "assets/u3.png",
                        author: "Harshit Vashith",
                        course: "Instructor"
                    ),
                  ],
                ),
              ),
            ),
          ),
          ScreenUtil().setVerticalSpacing(20),
              //Lastest Videos Starts here
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Text("Lastest Videos"),
              ),
          ScreenUtil().setVerticalSpacing(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Container(
              width: 1.sw,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    LastestVideos(
                        title: "What exactly is...",
                        text: "Web Development",
                        desc1: "MERN Stack is a...",
                        asset: "assets/mern.jpg",
                        author: "Cipher Schools", course: "Instructor"
                    ),
                    ScreenUtil().setHorizontalSpacing(10),
                    LastestVideos(
                        title: "Linear regression...",
                        text: "Programming",
                        desc1: "In statistics, linear...",
                        asset: "assets/lin.jpg",
                        author: "Cipher Schools", course: "Instructor"
                    ),
                    ScreenUtil().setHorizontalSpacing(10),
                    LastestVideos(
                        title: "All about git and...",
                        text: "Git and GitHub",
                        desc1: "Git: Git is a distributed...",
                        asset: "assets/github.png",
                        author: "Cipher Schools", course: "Instructor"
                    ),
                    ScreenUtil().setHorizontalSpacing(10),
                    LastestVideos(
                        title: "How to use google...",
                        text: "Other",
                        desc1: "Google is an American...",
                        asset: "assets/image1.png",
                        author: "Cipher Schools", course: "Instructor"
                    ),
                  ],
                ),
              ),
            ),
          ),
          //***********************Popular Categories******************************//
          ScreenUtil().setVerticalSpacing(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Text("Popular Categories", style: GoogleFonts.montserrat(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.kDarkColor,
            ),),
          ),
          ScreenUtil().setVerticalSpacing(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Expanded(
              child: Container(
                width: 1.sw,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                     PopularCategories(),
                      ScreenUtil().setHorizontalSpacing(10),
                      PopularCategories(),
                      ScreenUtil().setHorizontalSpacing(10),
                      PopularCategories(),
                      ScreenUtil().setHorizontalSpacing(10),
                      PopularCategories(),
                      ScreenUtil().setHorizontalSpacing(10),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ScreenUtil().setVerticalSpacing(20),
        //******************************** All Courses ************************//
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Text("All Courses", style: GoogleFonts.montserrat(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.kDarkColor,
            ),),
          ),
          ScreenUtil().setVerticalSpacing(10),
    Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.w),
      child: MasonryGridView.count(
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      mainAxisSpacing: 12.h,
      crossAxisSpacing: 10,
      crossAxisCount: 2,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
            clipBehavior: Clip.none,
            children: [
        Container(
//      padding:
//      EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.h),
        decoration: BoxDecoration(
        color: AppColors.kWhite,
        boxShadow: [
        BoxShadow(
        color: Colors.grey.withOpacity(.1),
        spreadRadius: 2,
        blurRadius: 4,
        ),
        ],
        borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.r),
          topRight: Radius.circular(8.r)
        ),
        child: Image.asset(
        "assets/mern.jpg" ?? '',
        errorBuilder: (_, __, st) => Image.asset(
        'assets/images/placeholder.png',
        fit: BoxFit.cover,
        ),
        height: 96.h,
        width: 1.sw,
        fit: BoxFit.cover,
        ),
        ),
        SizedBox(height: 6.h),
          Row(
            children: [
              Expanded(
                flex:7,
                child: Container(
                  height: 20.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6.r),
                      bottomRight:  Radius.circular(6.r),
                    ),
                    color: AppColors.kLightYellow,
                  ),
                  child: Center(
                    child: Text("Web Development", style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: AppColors.kDeepYellow
                    ),),

                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(""),
              ),
            ],
          ),
          ScreenUtil().setVerticalSpacing(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text("Python Programming", style: GoogleFonts.montserrat(
              fontSize: 14.sp,
              color: AppColors.kDarkColor,
              fontWeight: FontWeight.w300,

            ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          ScreenUtil().setVerticalSpacing(5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text("No. of video: 64", style: GoogleFonts.montserrat(
              fontSize: 14.sp,
              color: AppColors.kDarkColor,
              fontWeight: FontWeight.w200,
            ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          ScreenUtil().setVerticalSpacing(5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text("Course time: 10.6 hours", style: GoogleFonts.montserrat(
              fontSize: 14.sp,
              color: AppColors.kDarkColor,
              fontWeight: FontWeight.w200,
            ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          ScreenUtil().setVerticalSpacing(10),
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
                    Text("Cipher Schools", style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w300,
                      color: AppColors.kDarkColor,
                      fontSize: 14.sp,
                    ),),
                    ScreenUtil().setVerticalSpacing(5),
                    Text("Instructor", style: GoogleFonts.montserrat(
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
        )
        ]
        )
        ]
        );
      }
      ),
    ),
          ScreenUtil().setVerticalSpacing(25),

        ],
      ),
    );
  }
}

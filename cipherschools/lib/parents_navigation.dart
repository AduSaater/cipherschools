import 'package:cipherschools/exports.dart';
class ParentNavigationScreen extends StatefulWidget {
  @override
  _ParentNavigationScreenState createState() => _ParentNavigationScreenState();
}

class _ParentNavigationScreenState extends State<ParentNavigationScreen> {
  List screens = [
    HomePage(),
    CoursesScreen(),
    Scaffold(),
    Scaffold(),
  ];
  List<Widget> views() => [
    HomePage(),
    CoursesScreen(),
    Scaffold(body: Center(child: Text("Trending", style: GoogleFonts.montserrat(color: AppColors.kDarkColor, fontSize: 16.sp),),),),
    Scaffold(body: Center(child: Text("Profile", style: GoogleFonts.montserrat(color: AppColors.kDarkColor, fontSize: 16.sp),),),),
  ];
  int currentIndex = 0;
  void changeIndex(int index) {
    currentIndex = index;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:  views()[currentIndex],
    bottomNavigationBar: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.h),
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          //color: AppColors.kWhite
        ),
        child:  ClipRRect(
          borderRadius: BorderRadius.circular(30.r),
          child: BottomNavigationBar(

          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.kWhite,
          selectedItemColor: AppColors.kDeepYellow,
          unselectedItemColor: AppColors.kDarkColor,
          currentIndex: currentIndex,
          selectedLabelStyle: GoogleFonts.montserrat(
          fontSize: 14.sp,
          color: AppColors.kDeepYellow,),
          unselectedLabelStyle: GoogleFonts.montserrat(
          fontSize: 14.sp,
          color: AppColors.kDarkColor,),
          items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
          label: 'Home',
          icon: ImageIcon(
          AssetImage('assets/home_icon.png'),
          color: AppColors.kDarkColor,
          ),
          activeIcon: ImageIcon(
          AssetImage('assets/home_icon.png'),
          color: AppColors.kDeepYellow,
          )),
          BottomNavigationBarItem(
          label: 'Courses',
          icon: ImageIcon(
          AssetImage('assets/course_icon.png'),
          color: AppColors.kDarkColor,
          ),
          activeIcon: ImageIcon(
          AssetImage('assets/course_icon.png'),
          color: AppColors.kDeepYellow,
          )),
          BottomNavigationBarItem(
          label: 'Trending',
          icon: ImageIcon(
          AssetImage('assets/menu_icon.png'),
          color: AppColors.kDarkColor,
          ),
          activeIcon: ImageIcon(
          AssetImage('assets/menu_icon.png'),
          color: AppColors.kDeepYellow,
          ),
          ),
          BottomNavigationBarItem(
          label: 'My Profile',
          icon: ImageIcon(
          AssetImage('assets/person.png'),
          color: AppColors.kDarkColor,
          ),
          activeIcon: ImageIcon(
          AssetImage('assets/person.png'),
          color: AppColors.kDeepYellow,
          ),
          ),
          ],
          onTap: changeIndex,
          ),
        ),
      ),
    ),
    );
  }
}

import 'package:cipherschools/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
    minTextAdapt: true,
    splitScreenMode: true,
        builder:(context, child){
       return MaterialApp(
         debugShowCheckedModeBanner: false,
        title: 'CipherSchools',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: ParentNavigationScreen(),
      );
    }
    );
  }
}


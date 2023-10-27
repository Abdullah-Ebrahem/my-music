import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/core/methods.dart';
import 'package:music/screens/splash/view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: const SplashScreen(),
      builder: (context, child) => MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'My Music',
        home: child,
        theme: ThemeData(
            drawerTheme:
                const DrawerThemeData(backgroundColor: Color(0xff10121D)),
            appBarTheme: const AppBarTheme(
                elevation: 0, backgroundColor: Colors.transparent),
            scaffoldBackgroundColor: const Color(0xff181B2C)),
      ),
    );
  }
}

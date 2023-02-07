import 'package:flutter/material.dart';
import 'ui/screen/home_page_/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


//For responsive screen we use a package name screen utilities which give the features to make the app responsive ,and gives easy implementation to widgets

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: home_page(),
        );
      },
    );
  }
}

void main()=>runApp(Myapp());


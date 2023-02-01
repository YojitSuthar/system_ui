import 'package:flutter/material.dart';
import 'ui/screen/home_page_/home_page.dart';
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}

void main()=> runApp(Myapp());

import 'package:designs/src/pages/basic_page.dart';
import 'package:designs/src/pages/botones_page.dart';
import 'package:designs/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: 'basic',
      routes: {
        'basic': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrolllPage(),
        'botones': (BuildContext context) => BotonesPage()
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:indie_team_up/widget/page/page_LoginByPwd.dart';
import 'package:indie_team_up/widget/widget_avatar.dart';
import 'package:indie_team_up/widget/widget_project_description.dart';

import 'widget/page/page_HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'HomePage',
        theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(seedColor: HexColor("#41CED7"))),
        home: Scaffold(
          body: MyHomePage(title: ""),
        ),
        builder: (context, widget) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        routes: {
          '/loginByPwd': (context) => LoginByPwd(),
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:indie_team_up/widget/widget_avatar.dart';
import 'package:indie_team_up/widget/widget_project_description.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indie Team Up Demo',
      theme: ThemeData(colorScheme: ColorScheme.highContrastLight()),
      home: const MyHomePage(title: '团队简介'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Image.asset("assets/art/app_bar/icon_appbar_exit.png")),
          centerTitle: true,
          title: Text(widget.title),
          actions: <Widget>[
            Container(
              child: SpeedDial(
                backgroundColor: Colors.white,
                icon: Icons.menu,
                shape: Border(),
                spaceBetweenChildren: 0,
                renderOverlay: false,
                childrenButtonSize: Size(50, 20),
                overlayOpacity: 0,
                childMargin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                childPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                spacing: 0,
                animationAngle: 90,
                activeIcon: Icons.menu_open,
                buttonSize: const Size(80, 60),
                overlayColor: Colors.white10,
                direction: SpeedDialDirection.down,
                children: [
                  SpeedDialChild(child: Text("加关注"), shape: const Border()),
                  SpeedDialChild(child: Text("举报"), shape: const Border()),
                ],
              ),
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Column(
                children: [
                  WAvatar(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/art/job/icon_job_game.png"),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "梦幻天弘工作室",
                          style: textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("未知领域"),
                        SizedBox(
                          width: 30,
                        ),
                        Text("RPG | 卡牌 | 肉鸽 ")
                      ],
                    ),
                  ),
                  WProjectDescription(),

                ],
              )
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

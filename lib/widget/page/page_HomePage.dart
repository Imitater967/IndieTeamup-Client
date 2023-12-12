import 'package:flutter/material.dart';

import '../Constants.dart';

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
  @override
  Widget build(BuildContext context) {

    var tipTextStyle = const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.normal);

    double marign = 241;

    return Container(
      color: Constants.mainColor,
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, marign, 0, 0),
              child: const Center(
                child: Text(
                  'IndieTeamUp',
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: "alegreya-sans",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 246, 0, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/loginByPwd');
                },
                style: Constants.mainButtonStyleA,
                child: Text("登录", style: Constants.mainButtonTextStyleA),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 36, 0, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/regByCode');
                },
                style: Constants.mainButtonStyleA,
                child: Text("注册", style: Constants.mainButtonTextStyleA),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 78, 0, 0),
              child: TextButton(child: Text("登录时候遇到问题?",style: tipTextStyle,),onPressed: (){},),
            )
          ],
        ),
      ),
    );
  }
}

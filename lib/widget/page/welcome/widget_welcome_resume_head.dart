import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/Constants.dart';

class WelcomeResumeHead extends StatefulWidget {
  String title;
  String subTitle;
  List<Widget> children;

  WelcomeResumeHead(this.title, this.subTitle,
      {this.children = const <Widget>[]}) {}

  @override
  State<StatefulWidget> createState() {
    return _WelcomeResumeHeadState(title, subTitle, children);
  }
}

class _WelcomeResumeHeadState extends State<WelcomeResumeHead> {
  String title;
  String subTitle;
  List<Widget> children;

  _WelcomeResumeHeadState(
    this.title,
    this.subTitle,
    this.children,
  ) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: Image.asset("assets/art/login/return@3x.png"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(40, 46, 40, 43),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Constants.titleTextStyle,
                textAlign: TextAlign.left,
              ),
              Text(
                subTitle,
                style: Constants.greyTextStyle,
                textAlign: TextAlign.left,
              ),
              ...children,
            ],
          ),
        )
      ],
    );
  }
}

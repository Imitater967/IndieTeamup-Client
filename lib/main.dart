import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:indie_team_up/widget/page/login/page_EnterCode.dart';
import 'package:indie_team_up/widget/page/login/page_LoginByCode.dart';
import 'package:indie_team_up/widget/page/login/page_LoginByPwd.dart';
import 'package:indie_team_up/widget/page/login/page_RegisterByCode.dart';
import 'package:indie_team_up/widget/page/welcome/page_IdentitySelector.dart';
import 'package:indie_team_up/widget/page/welcome/page_InvestorCompanyIdentity.dart';
import 'package:indie_team_up/widget/page/welcome/page_InvestorManagerIdentity.dart';
import 'package:indie_team_up/widget/page/welcome/page_TeamCompanyIdentity.dart';
import 'package:indie_team_up/widget/page/welcome/page_TeamMemberIdentity.dart';
import 'package:indie_team_up/widget/page/welcome/page_WorkerIdentity.dart';
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
        home: const Scaffold(
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
          '/loginByCode': (context) => LoginByCode(),
          '/regByCode' : (context) => RegisterByCode(),
          '/enterCode' : (context) => EnterCode(),
          '/welcome/idSelector' : (context) => IdentitySelector(),
          '/welcome/workerIdentity' : (context) => WorkerIdentity(),
          '/welcome/teamMemberIdentity' : (context) => TeamMemberIdentity(),
          '/welcome/teamCompanyIdentity' : (context) => TeamCompanyIdentity(),
          '/welcome/investorManagerIdentity' : (context) => InvestorManagerIdentity(),
          '/welcome/investorCompanyIdentity' : (context) => InvestorCompanyIdentity(),
        });
  }
}

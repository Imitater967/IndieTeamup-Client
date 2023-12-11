import 'package:flutter/cupertino.dart';

class LoginByCode extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  int number = 13110403087;

  return _LoginByCodeState();
  }

}

class _LoginByCodeState extends State<LoginByCode>{

  int number=00100100;

  void setNumber(int number){
    setState(() {
      this.number = number;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

}
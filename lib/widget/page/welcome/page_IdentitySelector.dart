import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/Constants.dart';

class IdentitySelector extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
          child: Container(
            color: Constants.mainColor,
            child: Container(
              margin: EdgeInsets.fromLTRB(48, 93, 48, 0),
              child: Column(
                children: [
                  _SelectBox("我想应聘", "我是\n设计师/程序员/美术...",(){
                    Navigator.pushNamed(context, "/welcome/workerIdentity");
                  }),
                  _SelectBox("我想招聘、寻投资", "我是团队/项目方",(){}),
                  _SelectBox("我想投资", "我是投资方",(){}),
                ],
              ),
            ),
          ),
      ),
    );
  }
}

class _SelectBox extends StatelessWidget{
  String Title;
  String SubTitle;
  VoidCallback onPressed;
  _SelectBox(this.Title,this.SubTitle,this.onPressed);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 143,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 73),
      color: Colors.white,
      child: TextButton(
        onPressed: onPressed,
        child: Column(
          children: [
            const SizedBox(height: 36,),
            Text(Title, style: Constants.titleTextStyle.copyWith(),),
            const SizedBox(height: 21,width: 0,),
            Text(SubTitle, style: Constants.titleTextStyle.copyWith(fontSize: 16,fontWeight: FontWeight.normal),textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }

}
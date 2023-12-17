//我很确定这里的都是Stateleess

import 'package:flutter/cupertino.dart';
import 'package:indie_team_up/util/MarignFlowDelegate.dart';

class _SkillItem extends StatelessWidget{
  String skillName = "技能名字";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 20,
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
        Text(skillName),
        SizedBox(width: 5,),
        Text("Lv2")
      ],),
    );
  }
}

//这里因为是需要传递数据的,所以需要这些
class SkillArraySimple extends StatelessWidget{
  const SkillArraySimple({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      child: Wrap(
        children: [
        _SkillItem(),_SkillItem(),_SkillItem(),_SkillItem(),_SkillItem(),
      ],),
    );
  }

}


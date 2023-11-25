import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class WProjectDescription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    var projectDescriptionState = _FProjectDescriptionState();

    return projectDescriptionState;
  }
}

class _FProjectDescriptionState extends State<WProjectDescription> {
  String description = "# 详情\n畅快的2d射击,多元的任务属性,还有更多更多你意想不到的的东西\nasasd";

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: SizedBox(
        width: 275,
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: ShapeDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                              "assets/art/avatar/bg_resume_avatar.png"),
                          fit: BoxFit.fill),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(5),
                      )),
                  child: Image.asset(
                    "assets/art/project/icon_project_default.png",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "未知领域是一款非常Nice的游戏",
                  style: textTheme.bodyLarge,
                )
              ],
            ),
            Text(
              description,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

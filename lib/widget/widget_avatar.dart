import 'package:flutter/cupertino.dart';

class WAvatar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        width: 200,
        height: 200,
        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: ShapeDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/art/avatar/bg_resume_avatar.png"),
                          fit: BoxFit.fill
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(20),
                      )
                  ),
                  child: Image.asset("assets/art/avatar/avatar_resume_default.png"),
                )
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset("assets/art/avatar/icon_resume_avatar_promotion.png"),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset("assets/art/avatar/icon_resume_identification_lv0.png"),
            ),
          ],
        ),
      );
  }


}
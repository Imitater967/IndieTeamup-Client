import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeamBottomNavigationBar extends StatefulWidget{
  int selectedIndex;
  TeamBottomNavigationBar(this.selectedIndex);

  @override
  State<StatefulWidget> createState() {
    return _TeamBottomNavigationBarState(selectedIndex);
  }
}
class _TeamBottomNavigationBarState extends State<TeamBottomNavigationBar>{
  int selectedIndex;
  _TeamBottomNavigationBarState(this.selectedIndex);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: this.selectedIndex,
      backgroundColor: Colors.black45,
      unselectedItemColor: Colors.black45,
      selectedItemColor: Colors.black,
      showUnselectedLabels: true,
      unselectedLabelStyle: TextStyle(color: Colors.black45,fontWeight: FontWeight.normal),
      selectedLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
      onTap: (intVar){
        switch(intVar){
          case 0:
            Navigator.pushNamed(context, "/lobby/lobbyTeamRecruit");
            break;
          case 1:
            Navigator.pushNamed(context, "/lobby/lobbyTeamInvest");
            break;
        }
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.add_a_photo), label: ('招聘'),),
        BottomNavigationBarItem(
            icon: Icon(Icons.center_focus_strong), label: ('融资')),
        BottomNavigationBarItem(
            icon: Icon(Icons.center_focus_strong), label: ('发现')),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_alarm_outlined), label: ('消息')),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_alarm_outlined), label: ('我'))
      ],
    );
  }

}
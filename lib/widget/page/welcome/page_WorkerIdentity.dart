import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkerIdentity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WorkerIdentityState();
  }
}

class _WorkerIdentityState extends State<WorkerIdentity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      child: Container(
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.fromLTRB(16, 10, 16, 0),
          child: Column(
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
            ],
          ),
        ),
      ),
    ));
  }
}

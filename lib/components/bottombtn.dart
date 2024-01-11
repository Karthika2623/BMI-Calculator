import 'package:flutter/material.dart';
import '../constant.dart';

class BottomBtn extends StatelessWidget {
  // const BottomBtn({super.key,});
  BottomBtn({required this.onTap,required this.btnTitle});

  final void Function() onTap;
  final String btnTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        child: Center(
            child: Text(btnTitle,style: kBottomBtnStyle)),
        color:kBottomConClr,
        margin: EdgeInsets.only(top: 15.0),
        padding:EdgeInsets.only(bottom: 15.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
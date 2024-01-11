import 'package:flutter/material.dart';

class RoundIconBtn extends StatelessWidget {
  RoundIconBtn({required this.icon,required this.onPressing});

  final IconData icon;
  final void Function() onPressing;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:onPressing,
      elevation: 5.0,
      // disabledElevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        height:56.0,
        width: 50.0,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      // shape:CircleBorder(),
      fillColor: const Color(0XFF4C4F54),
      child: Icon(icon),
    );
  }
}

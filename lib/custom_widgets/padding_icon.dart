import 'package:flutter/material.dart';

class PaddingIcon extends StatelessWidget {
  final IconData ic;

  PaddingIcon(this.ic);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Icon(ic, size: 32,color: Colors.white54,),
    );
  }
}
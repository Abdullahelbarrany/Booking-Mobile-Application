

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pics extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white38,
      child: SingleChildScrollView(
      child: Column(
        children: [
          for(int i=1;i<5;i++)
          Image.asset('assets/image/${i}.jpg')
        ],

      ),
      ),
    );

  }

}
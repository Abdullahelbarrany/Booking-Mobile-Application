
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details extends StatelessWidget
{
  int i=0;
  Map m ;
  details(Map m )
  {
    this.m = m;
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title:Text(m['username']),

    ),
    body: Column(
    children: [
      CircleAvatar(maxRadius: 40,
      backgroundColor: Colors.grey,
      child: m['icon'],),
      Text(m['mes'])
    ],

    ),
  );

  }

}
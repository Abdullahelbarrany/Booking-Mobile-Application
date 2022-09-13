


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myaccount extends StatelessWidget
{Map m ;
  Myaccount(Map mm)
  {
    this.m = mm;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(m['name']),
      ),
      body: ListView(
        children: [
          SizedBox(height: 50,)
          ,
          CircleAvatar(maxRadius: 50,
            backgroundImage:NetworkImage('https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png') ,
          ),
          SizedBox(height: 50,),
          Card(
            //color: Colors.grey,

              child:
              Text('Your Name:    ' + m['name'] , style: TextStyle(
                  fontSize: 24
              ),)),
          Divider(
            color: Colors.deepPurple,
            indent: 150,
            endIndent: 150,
            thickness: 2,
          ),
        ],
      ),
    );
  }
  
  
}
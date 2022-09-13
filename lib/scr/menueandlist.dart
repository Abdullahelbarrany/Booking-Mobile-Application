

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menue extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(width: 150,
          child: ListView(

            children: [

              Card(
                child: Text('Account'),
                color: Colors.grey,

              ),
              Card(
                child: Text('Balance'),
                color: Colors.grey,

              ),



            ],
          )
          ,),
      appBar: AppBar(
        title: Text('My app'),
      ),
      body: Column(
        children: [
          Card(

            child: Text('Balance'),
            color: Colors.grey,


          ),

        ],
      ),

    );

  }



}
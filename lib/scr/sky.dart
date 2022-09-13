import 'package:flutter/material.dart';
import 'package:flutter_app3/scr/calc.dart';
import 'package:flutter_app3/scr/chat.dart';
import 'package:flutter_app3/scr/pics.dart';



class Sky extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.chat),
                  text: 'Chat',


                ),
                Tab(
                  icon: Icon(Icons.picture_as_pdf),
                  text: 'Pics',
                ),
                Tab(
                  icon: Icon(Icons.calculate),
                  text: 'Calculator',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
             Chat(),
              pics(),
              MyApp()
            ],
          ),
        )
    );
  }
}


import 'package:flutter/material.dart';
Widget button1({ String text,Function function})=>
  MaterialButton(
    onPressed: function,
    color: Colors.green,
    child: Text(text,
        style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold
        )
    ),
  );

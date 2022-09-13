import 'package:flutter/material.dart';
import 'package:flutter_app3/bloc/count_logic.dart';
import 'package:flutter_app3/bloc/count_state.dart';
import 'package:flutter_app3/buttons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Count extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>countercubit(),
      child: BlocConsumer<countercubit,counterstate>(
        listener: (context, state) {},
        builder: (context, state) {
          var obj = countercubit.getobject(context);
          return Scaffold(
            appBar: AppBar(),
            body: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(obj.c.toString()),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    button1(text:'+',function:(){
                      obj.pluscount();
                    } ),

                    button1(text:'-',function:(){
                      obj.minus();
                    } ),
                    button1(text:'  Reset',function:(){
                      obj.reset();
                    } ),
                  ],
                ),

              ],
            ),


          );

        }


        ),
      );







  }
}


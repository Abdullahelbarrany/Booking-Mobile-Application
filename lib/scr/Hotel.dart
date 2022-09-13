

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app3/bloc/count_logic.dart';
import 'package:flutter_app3/bloc/count_state.dart';
import 'package:flutter_app3/buttons.dart';
import 'package:flutter_app3/scr/cart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Hotel extends StatelessWidget
{Map m ;
Hotel(Map m )
{
  this.m = m;
}
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>countercubit(),
    child: BlocConsumer<countercubit,counterstate>(
    listener: (context, state) {},
    builder: (context, state) {
      var obj = countercubit.getobject(context);
      return Scaffold(
        appBar: AppBar(
          title:Text(m['name']),

        ),
        body: ListView(

          children: [
            Image.network(m['pic']),
            Padding(padding: const EdgeInsets.all(15.0),
              child: Card(
                  //color: Colors.grey,

                  child:
                  Text('Hotel Name:    ' + m['name'] , style: TextStyle(
                      fontSize: 24
                  ),)),
            ),
            Divider(
              color: Colors.deepPurple,
              indent: 150,
              endIndent: 150,
              thickness: 2,
            ),
            Padding(padding: const EdgeInsets.all(15.0),
              child: Card(
                 // color: Colors.grey,
                  child: Text('Hotel Price:     '+m['price']+'LE', style: TextStyle(
                      fontSize: 24
                  ),)),
            ),
            Divider(
              color: Colors.deepPurple,
              indent: 150,
              endIndent: 150,
              thickness: 2,
            ),

            Padding(padding: const EdgeInsets.all(15.0),
              child: Card(
                //  color: Colors.grey,
                  child: Text('Hotel Location:    '+m['location'],style: TextStyle(
                      fontSize: 24
                  ),)),
            ),
            Divider(
              color: Colors.deepPurple,
              indent: 150,
              endIndent: 150,
              thickness: 2,
            ),
            Padding(padding: const EdgeInsets.all(15.0),
              child: Card(
                 // color: Colors.grey,
                  child: Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        TextSpan(text: 'Hotel Rating:          '+ m['Rating']),
                        WidgetSpan(

                            child: Icon(Icons.star, color: Colors.orangeAccent, size: 24,)),

                      ],
                    ),

                    style: TextStyle(
                        fontSize: 24
                    ),
                  )


              ),
            ),
            Divider(
              color: Colors.deepPurple,
              indent: 150,
              endIndent: 150,
              thickness: 2,
            ),
            Card(


              child:
              Column(
                children: [
                  Text(obj.c.toString() + '  Room (s)'   , style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)  ),
                  SizedBox(height: 25,),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      button1(text:'+',function:(){
                        obj.pluscount();
                      } ),

                      button1(text:'-',function:(){
                        obj.minus();
                      } ),
                      button1(text:'Reset',function:(){
                        obj.reset();
                      } ),
                    ],


                  ),
                ],
              ),
            ),

            Padding(padding: const EdgeInsets.all(15.0),
              child: Card(
                child: MaterialButton(
                  child: Text(' Book Now '),
                  color: Colors.blue,
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                      return Cart(map:m, count: obj.c,);
                    }),
                    );

                  },
                ),
              ),
            ),


          ],
        ),


      );
    }

    ),);


  }
  
  
}
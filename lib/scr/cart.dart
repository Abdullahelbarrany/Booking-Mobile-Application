

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app3/bloc/count_logic.dart';
import 'package:flutter_app3/scr/login.dart';
import 'package:flutter_app3/scr/sqlliteapp.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/count_state.dart';

class Cart extends StatelessWidget {
  Map m;
 List l = [{'name' : '________ ',
  'pic' : '______ ',
  'Rating' : ' _____',
  'location' :'_______ ',
  'price' : '0' },];
 int count = 0;
  Cart({Map map, int count}) {


    if(map == Null)
      {


        this.m = l[0] ;
      }
    else
      {
        this.m = map;
      }
    if(count!=Null)
      {
        this.count= count;
      }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => countercubit(),
      child: BlocConsumer<countercubit, counterstate>(
          listener: (context, state) {},
          builder: (context, state) {
            var obj = countercubit.getobject(context);
            obj.c=count;
            return Scaffold(
              appBar: AppBar(
                title: Text('Checkout'),
                actions: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
                ],
              ),
              body: ListView(
                children: [
                  Padding(padding: const EdgeInsets.all(30.0),
                    child: Card(
                     // color: Colors.cyan.withOpacity(.4),
                      child:
                      ListTile(

                        title: Text(this.m['name']),
                        subtitle: Text(this.m['location']),
                        //leading: (),
                        trailing: Text(' Price = '+ this.m['price'] +'x ${obj.c} Rooms' ),
                      ),
                    ),
                  ),
                  SizedBox(height: 350,),

                  Padding(padding: const EdgeInsets.all(30.0),
                    child: Card(
                      // color: Colors.cyan.withOpacity(.4),
                      child:
                      ListTile(

                        title: Text('Total :'),

                        //leading: (),
                        trailing: Text(' ${this.count *int.parse(this.m['price'])}'),
                      ),
                    ),
                  ),
                  Card(
                    child: MaterialButton(
                      child: Text('Confirm'),
                      color: Colors.blue,
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                          return SqliteApp(1);
                        }),
                        );

                      },
                    ),
                  ),
                ],




              ),
            );
          }
      ),);
  }
}
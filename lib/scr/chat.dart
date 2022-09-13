
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app3/scr/chatdetail.dart';

class Chat extends StatelessWidget
{
  List data=[
    {
      'icon': Icon(Icons.man ,color: Colors.deepOrangeAccent),
      'username': 'Abdullah',
      'mes' :'wyd'

    },
    {
      'icon': Icon(Icons.woman,color: Colors.deepOrangeAccent),
      'username': 'sarah',
      'mes' :'Hi'

    },
    {
      'icon': Icon(Icons.child_care,color: Colors.deepOrangeAccent),
      'username': 'mohamed',
      'mes' :'How are y ?'

    },
    {
      'icon': Icon(Icons.snowshoeing,color: Colors.deepOrangeAccent),
      'username': 'Ali',
      'mes' :'Where are u?'

    },
    {
      'icon': Icon(Icons.man,color: Colors.deepOrangeAccent),
      'username': 'omar',
      'mes' :'id:2032654'

    },
    {
      'icon': Icon(Icons.heart_broken,color: Colors.deepOrangeAccent),
      'username': 'maya',
      'mes' :'who?'

    },
    {
      'icon': Icon(Icons.man,color: Colors.deepOrangeAccent),
      'username': 'Abdullah',
      'mes' :'wyyd'

    },

  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
     color: Colors.white38,
     child: SingleChildScrollView
       (
       //scrollDirection: Axis.horizontal,
       child: Column(
         children: [
           for(int i=0;i<data.length;i++)
           Column(
             children: [


               InkWell(
                 onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                    return details(data[i]);
                  }),
                  );
                 },
                 child: Padding(

                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: [

                       CircleAvatar(maxRadius: 40,
                         backgroundColor: Colors.grey,
                         child: data[i]['icon'],


                       ),
                       SizedBox(width: 40,),
                       Column(
                         children: [
                           Text(data[i]['username']
                           ),
                           Text(data[i]['mes'])
                         ],
                       )
                     ],
                   ),

                 ),
               ),

               Divider(
                 color: Colors.deepPurple,
                 indent: 50,
                 endIndent: 50,
                 thickness: 2,
               ),
             ],

           ),



         ],
       ),

     )




   );
  }

}
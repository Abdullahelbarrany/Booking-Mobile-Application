

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app3/scr/Hotel.dart';

class Hotels extends StatelessWidget
{
  List hotels =[
  { 'name' : 'Sheraton',
    'pic' : 'https://media-cdn.tripadvisor.com/media/photo-s/23/3b/e0/13/oz-hotels-side-premium.jpg',
    'Rating' : '4.5 Stars',
    'location' :'Hurgada',
    'price' : '500'

  },
  { 'name' : 'kempinski',
    'pic' : 'https://www.lux-review.com/wp-content/uploads/2019/09/turkish-hotel.jpg',
    'Rating' : '6 Stars',
    'location' :'Sharm Elshiekh',
    'price' : '600'

  },
  { 'name' : 'Hilton',
    'pic' : 'https://www.idealtrip.net/wp-content/uploads/2022/02/hotel-ideal-trip.jpg',
    'Rating' : '5 Stars',
    'location' :'Luxor',
    'price' : '650'

  },
  { 'name' : 'Mariot',
    'pic' : 'https://images.ctfassets.net/rxqefefl3t5b/7CDSjVzuKhgz4JEv3uMgSF/0ff47d2edfb4baf87906b0eea5958f14/VHotels_Image.jpg',
    'Rating' : '5 Stars',
    'location' :'Aswan',
    'price' : '450'

  },
  { 'name' : 'Pyramisa',
    'pic' : 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/348233595.jpg?k=af53dfa9cd5aa0e1bb0771ed660b3bd197706e03e99f086c2a09ec3035af993c&o=&hp=1',
    'Rating' : '4.5 Stars',
    'location' :'Alexandria',
    'price' : '400'

  },
    { 'name' : '4 Season',
      'pic' : 'https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/184305239.jpg?k=4dbc2549dfba179004f2acdacceb65c7fb501f88823274ceb8397bde485209b7&o=',
      'Rating' : '7 Stars',
      'location' :'Cairo',
      'price' : '2500'

    },
    { 'name' : 'The Nile Ritz',
      'pic' : 'https://lirp.cdn-website.com/11191c87/dms3rep/multi/opt/24-GENERAL+VIEW-640w.jpg',
      'Rating' : '3 Stars',
      'location' :'Fayoum',
      'price' : '350'

    },
    { 'name' : 'Porto Sokhna',
      'pic' : 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/95670829.jpg?k=dfb6f87a3a33a559ef30f4244aa2766475b3f0833eb448c7f6db091563106ab0&o=&hp=1',
      'Rating' : '4.5 Stars',
      'location' :'Sokhna',
      'price' : '350'

    },
    { 'name' : 'Porto Marina',
      'pic' : 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/372505711.jpg?k=c8e064ce74c8b87a22b51a941b94dcd8b0ef200b0dcf939d13667bc68de49a1c&o=&hp=1',
      'Rating' : '5.5 Stars',
      'location' :'Marina',
      'price' : '600'

    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotels',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight:
        FontWeight.bold
        ),textAlign:TextAlign.center
          ,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(width: 50,height: 50,),

          for(int i=0; i< hotels.length;i++)
            Card(
              color: Colors.cyan.withOpacity(.4),
              child:
              ListTile(
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                    return Hotel(hotels[i]);
                  }),
                  );

                } ,
                title: Text(hotels[i]['name']),
                subtitle: Text(hotels[i]['location']),
                leading: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 200,
                    minHeight: 200,
                    maxWidth: 300,
                    maxHeight: 450,
                  ),
                  child: Image.network(hotels[i]['pic'], fit: BoxFit.cover),
                ),
              ),
            ),
        ],


    ),


    );

  }
  
  
}
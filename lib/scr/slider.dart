

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app3/scr/Hotel.dart';
import 'package:flutter_app3/scr/Hotels.dart';
import 'package:flutter_app3/scr/cart.dart';
import 'package:flutter_app3/scr/sqlliteapp.dart';

class Slideer extends StatelessWidget
{

   List imageList = [
    "https://media-cdn.tripadvisor.com/media/photo-s/23/3b/e0/13/oz-hotels-side-premium.jpg",
   "https://www.lux-review.com/wp-content/uploads/2019/09/turkish-hotel.jpg",
    "https://www.idealtrip.net/wp-content/uploads/2022/02/hotel-ideal-trip.jpg",
    "https://images.ctfassets.net/rxqefefl3t5b/7CDSjVzuKhgz4JEv3uMgSF/0ff47d2edfb4baf87906b0eea5958f14/VHotels_Image.jpg",
    "https://cf.bstatic.com/xdata/images/hotel/max1280x900/348233595.jpg?k=af53dfa9cd5aa0e1bb0771ed660b3bd197706e03e99f086c2a09ec3035af993c&o=&hp=1"
  ];
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

    }];
  List l = [{'name' : '________ ',
    'pic' : '______ ',
    'Rating' : ' _____',
    'location' :'_______ ',
    'price' : '0' },];
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text('Not Logged in'), accountEmail: Text(' ') ,
                currentAccountPicture: Image.network('https://apkmb.com/wp-content/uploads/2022/06/id-photo-passport-drivers-license-resume-etc.png') ,
                onDetailsPressed: (){

                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){

                    return SqliteApp(0);
                  }),
                  );
                },

              ),
              Card(
                color: Colors.indigo.withOpacity(.4),
                child: ListTile(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                      return SqliteApp(0);
                    }),
                    );
                  },
                  title: Text('My Account',
                    style: TextStyle(
                      fontFamily:" Roboto Slab "
                    ),

                  ),
                  trailing: Icon(Icons.account_balance),
                ),
              ),

              Card(
                color: Colors.indigo.withOpacity(.4),

                child: ListTile(
                  onTap:(){
                    Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                      return Hotels();
                    }),
                    );
                  } ,
                  title: Text('Hotels',
                    style: TextStyle(
                        fontFamily:" Roboto Slab "
                    ),

                  ),
                  trailing: Icon(Icons.hotel),
                ),
              ),
              Card(
                color: Colors.indigo.withOpacity(.4),
                child: ListTile(
                  onTap:(){
                    showDialog(
                      context: context, builder: (_)=> AlertDialog(
                      title: Text('Select a hotel' ),

                      content: Icon(Icons.sms_failed),


                    ),
                      barrierDismissible: true,
                    );
                  },
                  title: Text('CheckOut',
                    style: TextStyle(
                        fontFamily:" Roboto Slab "
                    ),

                  ),
                  trailing: Icon(Icons.add_shopping_cart),
                ),
              ),
              Card(
                color: Colors.indigo.withOpacity(.4),
                child: ListTile(
                  onTap: (){
                    showDialog(
                      context: context, builder: (_)=> AlertDialog(
                      title: Text('Logged out succesfully !' ),
                      content: Icon(Icons.logout_sharp),




                    ),
                      barrierDismissible: true,
                    );
                  },
                  title: Text('Log Out',
                    style: TextStyle(
                        fontFamily:" Roboto Slab "
                    ),

                  ),
                  trailing: Icon(Icons.logout),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(" Booking App" , style:TextStyle(
              fontFamily:" Roboto Slab "
          ) ,) ,
          backgroundColor:Colors.deepPurpleAccent,
          actions: [
            IconButton(
              color: Colors.lightBlueAccent,
              icon: Icon(Icons.book),
              onPressed: (){},

            ),
          ],
        ),
        body: ListView(

          children: [
            Padding(padding: const EdgeInsets.all(15.0),
              child: Text('Best Rating Hotels',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight:
              FontWeight.bold
              ),textAlign:TextAlign.center
                ,
              ),

      ),
            Divider(
              color: Colors.deepPurple,
              indent: 150,
              endIndent: 150,
              thickness: 2,
            ),
            CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: true,
              ),
              items: imageList.map((e) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.network(e,
                      width: 1050,
                      height: 350,
                      fit: BoxFit.cover,)
                  ],
                ) ,
              )).toList(),
            ),
            Padding(padding: const EdgeInsets.all(15.0),
              child: Text('Trending Hotels',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight:
              FontWeight.bold
              ),textAlign:TextAlign.center
                ,
              ),

            ),
            Divider(
              color: Colors.deepPurple,
              indent: 150,
              endIndent: 150,
              thickness: 2,
            ),

            for(int i = 0;i<hotels.length;i++)
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
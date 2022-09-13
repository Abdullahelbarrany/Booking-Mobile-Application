import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app3/database/database.dart';
import 'package:flutter_app3/scr/Register.dart';
import 'package:flutter_app3/scr/my%20account.dart';



class SqliteApp extends StatefulWidget {
  var email=TextEditingController();
  var password=TextEditingController();
  int place=0;
SqliteApp(int x){
  this.place=x;
}
  @override
  _SqliteAppState createState() => _SqliteAppState();
}

class _SqliteAppState extends State<SqliteApp> {
  var email=TextEditingController();
  var password=TextEditingController();
  DatabaseApp d;

  @override
  void initState() {
    super.initState();
    d=DatabaseApp();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login ',style:TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey
          ),)
          ,
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                labelText: 'email',
                hintText: 'enter email',
                prefixIcon: Icon(Icons.edit),
                suffixIcon: Icon(Icons.email),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                labelText: 'password',
                hintText: 'enter password',
                prefixIcon: Icon(Icons.edit),
                suffixIcon: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
          ),
          MaterialButton(
            onPressed: ()  {
              print('email is '+email.text);
              print('password is '+password.text);
              List mylist = [];
              d.getData(d.db).then((value) {
                mylist=value;
                print(mylist);
                int flag = 0;
                int g=0;
                for(int i =0 ; i < mylist.length ; i++){
                  if(mylist[i]['name'] == email.text && mylist[i]['password'] == password.text) {
                   // print("FOUNd");
                    flag = 1;
                    g=i;
                    break;
                  }
                }
                if(flag == 0)
                {
                  print('not found');
                  showDialog(
                    context: context, builder: (_)=> AlertDialog(
                    title: Text('Wrong Username or password'),
                    content: Icon(Icons.announcement_rounded ),
                  ),
                    barrierDismissible: true,
                  );


                }
                else
                  {
                    if(widget.place==0)
                      {  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                        return Myaccount(mylist[g]);
                      }),
                      );

                      }
                    else
                      {
                        showDialog(
                          context: context, builder: (_)=> AlertDialog(
                          title: Text('Correct Useername' ),

                          content: Text('Dear '+email.text+' your trip is now booked !'),


                        ),
                          barrierDismissible: true,
                        );

                      }


                  }
              });



            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.login),
                SizedBox(width: 20,),
                Text('Sign In'),
              ],
            ),
            color: Colors.blueGrey,
            elevation: 10,
            minWidth: 150,
          ),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
              return Register(widget.place);
            }),
            );
          },
              child: Text(
                  'no account click here'
              ))
        ],
      ),
    );
  }
}
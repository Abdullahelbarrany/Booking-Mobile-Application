import 'package:flutter/material.dart';
import 'package:flutter_app3/database/database.dart';
import 'package:flutter_app3/scr/Register.dart';
import 'package:flutter_app3/scr/chatdetail.dart';


class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email=TextEditingController();
  DatabaseApp d;
  var password=TextEditingController();
  void initState() {
    super.initState();
    d=DatabaseApp();
  }
  Map m ={ 'icon': Icon(Icons.man ,color: Colors.deepOrangeAccent),
    'username': 'Abdullah',
    'mes' :'wyd'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login ',style:TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey
          ),),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                labelText: 'E-mail',
                hintText: 'Enter E-mail',
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
                labelText: 'Password',
                hintText: 'Enter your Password',
                prefixIcon: Icon(Icons.edit),
                suffixIcon: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
          ),
          MaterialButton(
            onPressed: (){
              List m = d.mylist;
              print(d.mylist[0].name);
              for(int i = 0;i<m.length;i++)
                {
                  if(m[i].name==email)
                    {
                      print('dooooooooone');
                    }
                  else
                    {
                      print('error');
                    }
                }

            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.login),
                SizedBox(width: 20,),
                Text('SIGN IN'),
              ],
            ),
            color: Colors.blueGrey,
            elevation: 10,
            minWidth: 150,
          ),

          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
              return Register(0);
            }),
            );
            },
              child: Text(
                  'Dont have an account, Register now'
              )
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app3/database/database.dart';
import 'package:flutter_app3/scr/login.dart';
import 'package:flutter_app3/scr/sqlliteapp.dart';

class Register extends StatefulWidget
{
  int p=0;
  Register(int x){
    this.p=x;
  }
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  DatabaseApp d;
  void initState() {
    super.initState();
    d=DatabaseApp();
  }


TextEditingController email=TextEditingController();

  TextEditingController password=TextEditingController();
  TextEditingController confirm=TextEditingController();

@override
  Widget build(BuildContext context) {
    return Container(

      child: Scaffold(
        appBar: AppBar(title: Text('Register'),


        ),



        body: Column(


          mainAxisAlignment: MainAxisAlignment.center,



          children: [

            Text('Register Now ',style:TextStyle(
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
                  labelText: 'Name',
                  hintText: 'Enter Name',
                  prefixIcon: Icon(Icons.edit),
                  suffixIcon: Icon(Icons.drive_file_rename_outline),
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
                  suffixIcon: Icon(Icons.password),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: confirm,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  labelText: 'Confirm your password',
                  hintText: 'Enter password again',
                  prefixIcon: Icon(Icons.edit),
                  suffixIcon: Icon(Icons.password),
                ),
              ),
            ),

            MaterialButton(
              onPressed: (){
                //d.insertData('akef2','pass');
               // print(email.text+'password iddd' +password.text);
               if(password.text==confirm.text)
                 {
                   d.insertData(email.text,password.text);

                   Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                     return SqliteApp(widget.p);
                   }),
                   );
                 }
               else
                 {
                   showDialog(
                     context: context, builder: (_)=> AlertDialog(
                     title: Text('Passwords doesnt match'),
                     content: Icon(Icons.sms_failed ),
                   ),
                     barrierDismissible: true,
                   );


                 }

             //   print(d.mylist);

              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.login),
                  SizedBox(width: 20,),
                  Text('Register'),
                ],
              ),
              color: Colors.blueGrey,
              elevation: 10,
              minWidth: 150,
            ),


          ],
        ),
      ),
    );

  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app3/bloc/databasestate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

class databaselogic extends Cubit<Newdatabase>
{Database db;
List mylist=[];
  static databaselogic getobject(BuildContext c)
  {
    return BlocProvider.of(c);
  }
  databaselogic() : super(initdatabase())
  {
    create();
  }
createDatabase()async
{
  db=await openDatabase(
      'user.db',
      version: 1,
      onCreate: (d,v)async{
        await d.execute(
            'create table user (id integer primary key , name text ,password text)');
        print('Table created !!!');
      },
      onOpen: (d){
        print('Table opened');
        getData(d).then((value) {
          mylist=value;
          print(value);
        });
      }

  );
  emit(create());
}
Future<List> getData(Database d)async
{
  return await d.rawQuery('select * from user');
}
insertData(String name,String password)
{
  db.transaction((txn) {
    txn.rawInsert('insert into user (name,password) values("$name","$password")').then((value){
      print('inserted $value');
    });
    return null;
  });
  emit(insertitem());
}
}
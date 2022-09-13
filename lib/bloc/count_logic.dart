
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app3/bloc/count_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class countercubit extends Cubit<counterstate>
{
  static countercubit getobject(BuildContext c)
  {
    return BlocProvider.of(c);
  }
  countercubit() : super(Initcounter());
  int c = 0;
  pluscount()
  {
    c++;
    emit(plus());
  }
  minus()
  {
    c--;
    emit(minuss());


  }
  reset()
  {
    c=0;
    emit(reseet());

  }



}


import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/ui/screens/counter/bloc/event.dart';
import 'package:flutterbloc/ui/screens/counter/bloc/States.dart';

class CounterBloc extends Bloc<Counterevent,Conterstates>{
  int count=0;
  @override
  // TODO: implement initialState
  Conterstates get initialState => intialcounterstat();
  static CounterBloc get(BuildContext context)=>BlocProvider.of(context);

  @override
  Stream<Conterstates> mapEventToState(Counterevent event) async*{
    // TODO: implement mapEventToState
    if(event is increment){

      yield* _changevalue("in");
    }
    if(event is descrement){
      yield* _changevalue("de");
    }
  }

  Stream<Conterstates> _changevalue(String s) async*{
    switch(s){
      case 'in':
        count++;
        break;
      case 'de':
        if(count!=0){
        count--;
      }
        break;
    }

    yield sucesscounterstat(s);
  }

}
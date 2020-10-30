import 'package:flutter/cupertino.dart';
import 'package:flutterbloc/ui/screens/counter/bloc/bloc.dart';
import 'package:flutterbloc/ui/screens/counter/bloc/States.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/ui/screens/counter/bloc/event.dart';
class counter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider<CounterBloc>(create:
        (BuildContext context) =>CounterBloc(),
    child: BlocConsumer<CounterBloc,Conterstates>(
      listener: (BuildContext context, Conterstates state) {
        if(state is sucesscounterstat){
          print("done${state.type}");
        }
      },
      builder: (BuildContext context, Conterstates state) {
        int count=CounterBloc.get(context).count;
        return new Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: new Text("Counter Bloc"),
          ),
          body: Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new FloatingActionButton(onPressed: (){
                CounterBloc.get(context).add(increment());
              },child: new Icon(Icons.add),),
              SizedBox(width: 20.0,),
              Text(count.toString()),
              SizedBox(width: 20.0,),
              new FloatingActionButton(onPressed: (){CounterBloc.get(context).add(descrement());},child: new Icon(Icons.remove),)
            ],),)
        );
      },


    ),);

  }

}
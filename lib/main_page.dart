import 'package:belajarmultiblocmultipage/bloc/color_bloc.dart';
import 'package:belajarmultiblocmultipage/bloc/counter_bloc.dart';
import 'package:belajarmultiblocmultipage/draftPage.dart';
import 'package:belajarmultiblocmultipage/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 class MainPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return BlocBuilder<ColorBloc, Color>(
         builder: (context, color) => DraftPage(
           backgroundColor: color,
           body: Center(
             child: Column(
               mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 BlocBuilder<CounterBloc, int>(
                   builder: (context, count) => Text(count.toString(), style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                 ),
                 RaisedButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
                   },
                   child: Text("Click To Change", style: TextStyle(color: Colors.white),),
                   color: color,
                   shape: StadiumBorder(),
                 )
               ],
             ),
           ),
         )
     );
   }
 }

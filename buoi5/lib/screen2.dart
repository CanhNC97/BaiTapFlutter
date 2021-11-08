import 'package:flutter/material.dart';

class Page2 extends StatelessWidget{
  Page2({Key? key}) : super(key: key);
  final Listdemo =[
    'Lesson1',
    'Lesson2',
    'Lesson3',
    'Lesson4',
    'Lesson5',
    'Lesson6',
    'Lesson1',
    'Lesson2',
    'Lesson3',
    'Lesson4',
    'Lesson5',
    'Lesson6',
    'Lesson1',
    'Lesson2',
    'Lesson3',
    'Lesson4',
    'Lesson5',
    'Lesson6',
    'Lesson1',
    'Lesson2',
    'Lesson3',
    'Lesson4',
    'Lesson5',
    'Lesson6',
    'Lesson1',
    'Lesson2',
    'Lesson3',
    'Lesson4',
    'Lesson5',
    'Lesson6',
    'Lesson1',
    'Lesson2',
    'Lesson3',
    'Lesson4',
    'Lesson5',
    'Lesson6'
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.amberAccent, child: buildWidgetListView())),
          Expanded(child: Container(color: Colors.greenAccent, child: buildWidgetGridView())),
        ],
      )
    );
  }
  buildWidgetListView() => ListView.builder(
    scrollDirection: Axis.vertical,
    itemCount: Listdemo.length,
    itemBuilder: (BuildContext context, index){
      return Text(
        Listdemo[index],
        style: TextStyle(fontSize: 30),
      );
    }
  );
  buildWidgetGridView() => GridView.builder(
      itemCount: Listdemo.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5, mainAxisSpacing: 2, crossAxisSpacing: 2, mainAxisExtent: 100),
      itemBuilder: (BuildContext context,index){
        return Column(
          children: [
            Image.asset('asset/images/demo2.png',width: 30 ,height: 30,),
            Text(
              Listdemo[index],
              style: TextStyle(fontSize: 30),
            )
          ],
        );
      }
  );
}
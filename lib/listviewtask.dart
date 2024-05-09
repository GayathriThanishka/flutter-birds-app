import 'package:birdsapp/birdslist.dart';
import 'package:flutter/material.dart';

class ListviewTask extends StatefulWidget {
  const ListviewTask({super.key});

  @override
  State<ListviewTask> createState() => _ListviewTaskState();
}

class _ListviewTaskState extends State<ListviewTask> {
  
  @override
  Widget build(BuildContext context) {
    List<Animals> animal=[
      Animals(name: "name", color: "color"),
      Animals(name: "name", color: "color"),
      Animals(name: "name", color: "color"),
      Animals(name: "name", color: "color"),
      Animals(name: "name", color: "color"),
      ];
    return Scaffold(
      appBar: AppBar(title: const Text("Listview Builder Task"),centerTitle: true,),
      body: Container(
         
        child: ListView.builder(itemBuilder:(BuildContext context, int index)
        {
       
          return Container(
            
            color: Color.fromARGB(255, 246, 233, 122),
            child:  const ListTile(leading: Icon(Icons.abc),
            title: Text("Birds"),
            subtitle: Text("Peacock"),
            trailing: Icon(Icons.navigate_next),),
          );
        },itemCount: 2,
        ),
      ),
    );
  }
}
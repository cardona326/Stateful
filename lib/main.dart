

import 'package:flutter/material.dart';


void main() => runApp(MyApp());

//-------------------------------------------

class Tarea extends StatefulWidget {

  var laTarea;
  Tarea(t) {
    print("constructor de la tarea" + t['nombre']);
    this.laTarea = t;
  }
  @override
  State<Tarea> createState() {
    print("Create state");
    return new TareaState(laTarea);
  }
}


class TareaState extends State<Tarea>{

  var tst;
  TareaState(ts){
    this.tst = ts;
  }

  click(){
    print("click");
    setState( () {
      tst['done'] = !tst['done'];
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        padding: EdgeInsets.only(left:20),
        child: Row(
          if(tarea['done'])
            Icon(Icons.done),
          else
            Icon(Icons.clear),

          FlatButton(
            onPressed: (){_click;},
            child: Text(tarea['nombre'])
                     //("  "+tst['nombre'])
          ),

        ),
    );
  }
}


//----------------------------------------------

class MyApp extends StatelessWidget {

  //var tareaejemplo = { "nombre": "Hola soy una tarea", "done": true};
  var tareas = [
    {'nombre': "Tarea1", "done": true},
    {'nombre': "Tarea2", "done": true},
    {'nombre': "Tarea3", "done": true},
    {'nombre': "Tarea4", "done": true},
    {'nombre': "Tarea5", "done": true},
    {'nombre': "Tarea6", "done": true},
    {'nombre': "Tarea7", "done": true},
    {'nombre': "Tarea8", "done": true},
    {'nombre': "Tarea9", "done": true},
    {'nombre': "Tarea10", "done": true},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutters'),
        ),
        body: ListView(
            /*child: Container (
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
/*
                child: Row(
                  children: [

                    if(tarea['done'])
                      Icon(Icons.done)
                    else
                      Icon(Icons.clear),
                    Text("  "+tarea['nombre']),*/

                      child: Column(
                        children: <Widget>[
                          for(var m in tarea)
                            Text(m['text'].toString() )
                        ],
                      ),
                  //],
                )*/

          children: <Widget>[
            for(var t in tareas) new Tarea(t)
          ],

              )
            ),
          );
  }
}

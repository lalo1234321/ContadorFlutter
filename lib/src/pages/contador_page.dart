import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return _ContadorPageState();
    
  }
}

class _ContadorPageState extends State<ContadorPage>{
   final _estiloTexto=new TextStyle(fontSize: 25);
   int _conteo=0;
   @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          centerTitle: true,
        ),
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clicks',style: _estiloTexto,),
              Text('$_conteo',style:_estiloTexto,),
            ],
          )
        ),
        floatingActionButton:_crearBotones()
      );
    }
    Widget _crearBotones(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget> [
        SizedBox(width:15),
        FloatingActionButton(child: Icon(Icons.add),onPressed:_agregar),
        SizedBox(width: 7,),
        FloatingActionButton(child: Icon(Icons.remove),onPressed:_restar),
        Expanded(child:SizedBox(width: 0,)) ,
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed:_reset),
        
        ],
      );
    }

    void _agregar(){
      setState(() {
        _conteo++;
      });
    }
    void _restar(){
      setState(() {
        _conteo--;
      });
    }
    void _reset(){
      setState(() {
        _conteo=0;
      });
    }
}


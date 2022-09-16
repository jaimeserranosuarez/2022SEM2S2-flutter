import 'dart:math';

import 'package:flutter/material.dart';
import '../models/button.model.dart';
import '../widgets/rowButtons.widget.dart';
import 'package:function_tree/function_tree.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List<String> historico = [];
String textResultados = '';
String auxiliaOperaciones = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora")),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                //height: 100,
                color: Color.fromARGB(255,64,64,64),
                child: Row(
                  children: [
                    Text(textResultados),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(3,0,3,3),
            child: Container(
              height: 150,
              color: Color.fromARGB(255,64,64,64),
              child: Row(
                children: [
                  Text(auxiliaOperaciones),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Color.fromARGB(255,56,56,56),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  filabotones([
                    ButtonModel(titulo: '7',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones += "7";
                      });
                    }),
                    ButtonModel(titulo: '8',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones += "8";
                      });
                    }),
                    ButtonModel(titulo: '9',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones += "9";
                      });
                    }),
                    ButtonModel(titulo: '/',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones += " / ";
                        textResultados += auxiliaOperaciones;
                        auxiliaOperaciones = "";
                      });
                    }),  
                    ButtonModel(titulo: '<-',metodo: (){
                      print(textResultados);
                      setState(() {
                        
                      });
                    }),  
                    ButtonModel(titulo: 'C',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones = "";
                        textResultados = "";
                      });
                    })                
                  ]),
                  filabotones([
                    ButtonModel(titulo: '4',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones += "4";
                      });
                    }),
                    ButtonModel(titulo: '5',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones += "5";
                      });
                    }),
                    ButtonModel(titulo: '6',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones += "6";
                      });
                    }),
                    ButtonModel(titulo: '*',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones += "*";
                        textResultados += auxiliaOperaciones;
                        auxiliaOperaciones = "";
                      });
                    }),   
                    ButtonModel(titulo: '(',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "(";
                      });
                    }), 
                    ButtonModel(titulo: ')',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += ")";
                      });
                    }),                
                  ]),    
                  filabotones([ 
                    ButtonModel(titulo: '1',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones += "1";
                      });
                    }),
                    ButtonModel(titulo: '2',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones += "2";
                      });
                    }),
                    ButtonModel(titulo: '3',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones += "3";
                      });
                    }),
                    ButtonModel(titulo: '-',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones += " - ";
                        textResultados += auxiliaOperaciones;
                        auxiliaOperaciones = "";
                      });
                    }),  
                    ButtonModel(titulo: 'χ²',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones = "pow($auxiliaOperaciones,2)";
                        textResultados += auxiliaOperaciones;
                        auxiliaOperaciones = "";
                      });
                    }),     
                    ButtonModel(titulo: '√',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones = "sqrt($auxiliaOperaciones)";
                        textResultados += auxiliaOperaciones;
                        auxiliaOperaciones = "";
                      });
                    }),             
                  ]),         
                  filabotones([
                    ButtonModel(titulo: '+/-',metodo: (){
                      setState(() {
                        textResultados += "*(-1)";
                      });
                    }),
                    ButtonModel(titulo: '0',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "0";
                      });
                    }),
                    ButtonModel(titulo: '%',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "%";
                      });
                    }),
                    ButtonModel(titulo: '+',metodo: (){
                      print(textResultados);
                      setState(() {
                        auxiliaOperaciones += "+";
                        textResultados += auxiliaOperaciones;
                        auxiliaOperaciones = "";
                      });
                    }),
                    ButtonModel(titulo: '=',metodo: (){
                      textResultados += auxiliaOperaciones;
                      print(textResultados);
                      print("resultado ${textResultados.interpret()}");
                       setState(() {
                        textResultados = "El resultado es: ${textResultados.interpret()}";
                      });
                    }),                  
                  ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
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
String textResultados = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora")),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //height: 100,
              color: Color.fromARGB(255, 248, 228, 166),
              child: Row(
                children: [
                  Text("Operaciones"),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 250, 203, 170),
            child: Row(
              children: [
                Text(textResultados),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Color.fromARGB(255, 210, 215, 255),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  filabotones([
                    ButtonModel(titulo: '%',metodo: (){print("uno");}),
                    ButtonModel(titulo: 'CE',metodo: (){print("dos");}),
                    ButtonModel(titulo: 'C',metodo: (){print("tres");}),
                    ButtonModel(titulo: '<-',metodo: (){print("mas");}),                  
                  ]), 
                  filabotones([
                    ButtonModel(titulo: '1/x',metodo: (){print("uno");}),
                    ButtonModel(titulo: 'χ²',metodo: (){print("dos");}),
                    ButtonModel(titulo: '√',metodo: (){print("tres");}),
                    ButtonModel(titulo: '/',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "/";
                      });}),                  
                  ]), 
                  filabotones([
                    ButtonModel(titulo: '7',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "7";
                      });
                    }),
                    ButtonModel(titulo: '8',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "8";
                      });
                    }),
                    ButtonModel(titulo: '9',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "9";
                      });
                    }),
                    ButtonModel(titulo: 'x',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "*";
                      });
                    }),                  
                  ]),
                  filabotones([
                    ButtonModel(titulo: '4',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "4";
                      });
                    }),
                    ButtonModel(titulo: '5',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "5";
                      });
                    }),
                    ButtonModel(titulo: '6',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "6";
                      });
                    }),
                    ButtonModel(titulo: '-',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += " - ";
                      });}),                  
                  ]),    
                  filabotones([ 
                    ButtonModel(titulo: '1',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "1";
                      });
                    }),
                    ButtonModel(titulo: '2',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "2";
                      });
                    }),
                    ButtonModel(titulo: '3',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "3";
                      });
                    }),
                    ButtonModel(titulo: '+',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += " + ";
                      });
                    }),                  
                  ]),         
                  filabotones([
                    ButtonModel(titulo: '+/-',metodo: (){print("uno");}),
                    ButtonModel(titulo: '0',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += "0";
                      });
                    }),
                    ButtonModel(titulo: ',',metodo: (){
                      print(textResultados);
                      setState(() {
                        textResultados += ".";
                      });
                    }),
                    ButtonModel(titulo: '=',metodo: (){
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
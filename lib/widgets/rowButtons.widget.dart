import 'package:flutter/material.dart';
import '../models/button.model.dart';

Widget filabotones(List<ButtonModel> lista){

  List<Widget> listabotones = [];
  lista.forEach((element){
    if(element.titulo != "="){
    listabotones.add(ElevatedButton(
          onPressed: element.metodo,
          child: Text(element.titulo),
          style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255,69,69,69) // foreground
          ),));
    }
    else{   
      listabotones.add(ElevatedButton(
          onPressed: element.metodo,
          child: Text(
            element.titulo,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255,108,180,67),
            minimumSize: element.titulo == "="
                              ? const Size(120, 40)
                              : const Size(120, 40),
            maximumSize: const Size(200, 50),                 
          ),));       
    }
    }
  );

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children:listabotones);
}
import 'package:flutter/material.dart';
import '../models/button.model.dart';

Widget filabotones(List<ButtonModel> lista){

  List<Widget> listabotones = [];
  lista.forEach((element){
    listabotones.add(ElevatedButton(
          onPressed: element.metodo,
          child: Text(element.titulo)));
  });


  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children:listabotones);
}
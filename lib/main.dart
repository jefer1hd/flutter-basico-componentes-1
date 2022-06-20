//Para dar diseño a la app se usa material app
//el primer widget hijo se lo nombra home, luego vienen a ser child
//esto es un arbol de widgets, para envolver un widget se preiona control y punto
//Scaffold es el lienzo en blanco de la app
//appbar es la barra de arriba de la app
//title espera un widget y se le pasa un widget texto
//Center, es un widget que centra

import 'package:flutter/material.dart';
import 'package:primera_app/helpers/gialogs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
//Ignorar mensaje de constructor
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_print
//ignore_for_file: avoid_unnecessary_containers
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(241, 133, 38, 1),
          title: Text("BIENVENIDO"),
        ),
        //apilar varios widgets en columna

        body: Builder(
          builder: (BuildContext context) => SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [BoxShadow(blurRadius: 3)],
                    ),
                    child: Text(
                      "Trave Developer Solutions",
                      //personalizar texto con style
                      style: TextStyle(
                          color: Color.fromRGBO(241, 133, 38, 1),
                          fontSize: 29,
                          fontWeight: FontWeight.w600),
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ),
                //Cargar una imagen directamente desde una url
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.network(
                    "https://www.travehelp.com/files/sistema/logoinicio.png",
                    height: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Somos una empresa que brinda soluciones informáticas y tecnológicas, dedicándonos al desarrollo de software y servicios de tecnología, sistemas de video vigilancia, alarmas, componentes, venta de accesorios y afines.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.justify,
                  ),
                ),
                //Botones en flutter

                Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        primary: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {
                        //llama a la funcion cuando se le da click al boton
                        clickBoton(context);
                      },
                      child: Text("Prueba")),
                ),
                //Cargar imagen desde la carpeta del proyecto
                /*  Image.asset(
                  'assets/images/sinve.png',
                  height: 200,
                ), */
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Funcion que realiza el boton
  clickBoton(BuildContext context) {
    infoDialog(
        context: context,
        title: "¡Funciona!",
        content: "Funciona correctamente");
  }
}

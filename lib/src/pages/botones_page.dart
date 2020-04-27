import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _fondoApp(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[_titulos(), _botonesRedondeados()],
              ),
            ),
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final caja = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 320,
          width: 320,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0),
              ])),
        ));

    return Stack(
      children: <Widget>[gradiente, Positioned(top: -60, child: caja)],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify Transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Classify this transaction into a particular category',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30), title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart, size: 30), title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account, size: 30), title: Container()),
      ]),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: <TableRow>[
        TableRow(children: [
          _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
          _crearBotonRedondeado(Colors.purpleAccent, Icons.shop, 'Bus'),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.green, Icons.shopping_cart, 'Shopp'),
          _crearBotonRedondeado(Colors.white24, Icons.credit_card, 'Card'),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.blueGrey, Icons.crop_rotate, 'Rotate'),
          _crearBotonRedondeado(Colors.brown, Icons.camera, 'Camera'),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.grey, Icons.cast, 'Cast'),
          _crearBotonRedondeado(
              Colors.pinkAccent, Icons.change_history, 'Triangle'),
        ]),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icon, String texto) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
            height: 180,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: color,
                  radius: 35,
                  child: Icon(icon, color: Colors.white, size: 30),
                ),
                Text(
                  texto,
                  style: TextStyle(color: color),
                )
              ],
            )),
      ),
    );
  }
}

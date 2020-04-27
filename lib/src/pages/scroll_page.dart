import 'package:flutter/material.dart';

class ScrolllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[_pagina1(), _pagina2(context)],
    ));
  }

  Widget _pagina1() {
    return Container(
        child: Stack(
      children: <Widget>[_colorFondo(), _imagenFondo(), _textos()],
    ));
  }

  Widget _colorFondo() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(108, 192, 218, 1.0));
  }

  Widget _imagenFondo() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/original.png'),
          fit: BoxFit.cover,
        ));
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text('11°', style: estiloTexto),
          Text(
            'Miércoles',
            style: estiloTexto,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _pagina2(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(108, 192, 218, 1.0),
        child: Center(
            child: RaisedButton(
                shape: StadiumBorder(),
                color: Colors.teal,
                textColor: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Text('Welcome', style: TextStyle(fontSize: 20)),
                ),
                onPressed: () => Navigator.pushNamed(context, 'botones'))));
  }
}

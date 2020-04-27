import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        _crearImagen(),
        _crearInfoImagen(),
        _crearBotones(context),
        _crarTexto(),
        _crarTexto(),
        _crarTexto(),
        _crarTexto()
      ])),
    );
  }

  Widget _crearImagen() {
    return Image(
        image: NetworkImage(
            'https://static1.millenium.gg/articles/0/11/01/0/@/52188-gokus-article_m-1.jpg'));
  }

  Widget _crearInfoImagen() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Imagen de Dragon Ball',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Goku volando',
                    style: estiloSubTitulo,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30,
            ),
            Text(
              '7',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearBotones(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearBoton(context, Icons.call, 'CALL'),
        _crearBoton(context, Icons.near_me, 'ROUTE'),
        _crearBoton(context, Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _crearBoton(BuildContext context, IconData icon, String text) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(icon, size: 40, color: Colors.blue),
          onPressed: () => Navigator.pushNamed(context, 'scroll'),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crarTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}



import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';


Container card(double largura, double altura, Color? color, String texto,String img){
  return Container(
    margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Card(
      color: color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(texto, style: textNunitoWhiteBold(16)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 64, height: 64),
          ),
        ],
      ),
    ),
  );
}

Container cardDois(double largura, double altura, Color? color, String texto,String img){
  return Container(
    margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Card(
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 32, height: 32),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(texto, style: textNunito300(14)),
          ),
        ],
      ),
    ),
  );
}

Container card3(double largura, double altura, String img ){
  return Container(
    margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(img)),
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
Container cardPedido(double largura, double altura, String imagem,
    String nomeLoja, String pedido, String numeroPedido) {
  return Container(
    width: largura,
    height: altura,
    margin: EdgeInsets.all(18),
    color: Color.fromARGB(58, 165, 164, 164),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Row(
        children: [
          Container(
            child: Image.asset(
              imagem,
              fit: BoxFit.contain,
              width: 60,
              height: 60, // Altura da imagem
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              nomeLoja,
              style: textNunitoBold(18),
              textDirection: TextDirection.rtl,
            ),
          ),
        ],
      ),
      const Divider(),
      Row(
        children: [
          Icon(Icons.check_box_rounded, color: Colors.green),
          Text('Pedido Concluido °N:' + numeroPedido),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '1x ' + pedido,
          style: textNunitoBold(15),
        ),
      ),
      const Divider(
        color: Colors.black,
      ),
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ajuda',
              style: textRed(20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 20, // Altura desejada para a linha vertical
                width: 1, // Largura desejada para a linha vertical
                color: Colors.black,
              ),
            ),
            Text(
              'Adicionar a sacola',
              style: textRed(20),
            ),
          ],
        ),
      )
    ]),
  );
}

textRed(int i) {
}
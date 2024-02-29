import 'package:flutter/material.dart';
import 'package:aifood/CustomWidgets/card.dart';


class Pedidos extends StatelessWidget {
  const Pedidos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pedidos',
          style: TextStyle(
              color: Colors.red,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height -
                  AppBar().preferredSize.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Ajusta o alinhamento para a esquerda
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Histórico'),
                ),
                Text('Dom, 25 de fevereiro 2024'),
                cardPedido(400, 200, 'assets/acai.png', 'Açaí da LULU',
                    'Açaí de Leite ninho com morango', '0262'),
                SizedBox(
                    height:
                        20), // Adiciona um espaço entre os conjuntos de pedidos
                Text('Seg, 4 de janeiro 2024'),
                cardPedido(400, 200, 'assets/lanches.png', 'Hambúrguer da Amandinha',
                    'Hambúrguer de 4 queijos', '0263'), // Novo pedido de açaí
                SizedBox(
                    height:
                        20), // Adiciona um espaço entre os conjuntos de pedidos
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
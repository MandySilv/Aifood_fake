import 'package:aifood/CustomWidgets/card.dart';
import 'package:aifood/CustomWidgets/slide.dart';
import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var child2 = child;
    // ignore: unused_local_variable
    var largura = 190;
    return  Scaffold(
      appBar: AppBar(
        title: Text('R. Ari Barroso, 330', style: textNunitoBold(14)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Color.fromARGB(255, 0, 0, 0)),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                card(190, 80,Color.fromARGB(255, 241, 44, 44), "Pet", "assets/pet.png"),
                card(190, 80,Color.fromARGB(255, 241, 44, 44), "Mercado", "assets/mercado.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                cardDois(90, 100, const Color.fromARGB(255, 248, 245, 252), "Farmácia", "assets/farmacia.png"),
                cardDois(90, 100,  const Color.fromARGB(255, 248, 245, 252), "Bebidas", "assets/bebidas.png"),
                const SizedBox(width: 10),
                cardDois(90, 100, const Color.fromARGB(255, 248, 245, 252), "Sucos", "assets/sucos.png"),
                cardDois(90, 100,  const Color.fromARGB(255, 248, 245, 252), "Pizza", "assets/pizza.png"),
              ],
            ),
          ),
          Slide(),

          SizedBox(
          width: double.infinity,
          height: 110,
          child: Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                cardDois(90, 100, Color.fromARGB(255, 230, 230, 231), "Mercado", "assets/mercado.png"),
                cardDois(90, 100, Color.fromARGB(255, 230, 230, 231), "Padarias", "assets/tapioca.png"),
                cardDois(90, 100, Color.fromARGB(255, 230, 230, 231), "Saúdavel", "assets/peixes.png"),
                cardDois(90, 100, Color.fromARGB(255, 230, 230, 231), "Doces", "assets/bolo.png"),
                cardDois(90, 100, Color.fromARGB(255, 230, 230, 231), "Salgados", "assets/hotDog.png"),
                cardDois(90, 100, Color.fromARGB(255, 230, 230, 231), "Açaí", "assets/acai.png"),
                cardDois(90, 100, Color.fromARGB(255, 230, 230, 231), "Lanches", "assets/lanches.png"),
            ],
            )
            ),
            ),

          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text
            ('Pra quem curte lanche:',  style: textNunitoBold(24)),
          ),

           SizedBox(
            width: double.infinity,
            height: 190,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  card3(180, 180, "assets/lanches2.jpg"),
                  card3(180, 180, "assets/lanchesnat.jpg"),
                  card3(180, 180, "assets/lanches2.jpg"),
                  card3(180, 180, "assets/lanchesnat.jpg"),
                ],
              ),
            ),
           ),
        ],
        
      ),
    );
  }
}

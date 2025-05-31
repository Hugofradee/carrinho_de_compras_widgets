import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class CarrinhoDeCompras extends StatelessWidget {
  const CarrinhoDeCompras({super.key});

  @override
  Widget build(BuildContext context) {
  return OrientationBuilder(builder: (ctx, orientation) {
      return Scaffold( 
            backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.black54,
            iconTheme: IconThemeData(color: Colors.white),
              title: Text(
                  "Carrinho de compras",
                  style: TextStyle(color: Colors.white),
                ),
              actions: 
                [IconButton(onPressed: (){},
                  icon: Icon(Icons.add_box)
                   ), 
                  ],
                ),
          drawer: Drawer(
            child: ListView(
              children: ListMenu.get(context),
            ), 
          ),
          body: Container(
            color: Colors.blue.shade300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Text("Carrinho do", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                      ),
                    ),
                    Text("Hugo Frade", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: orientation == Orientation.portrait ? 400 : 150,
                  child: GridView.count(
                    crossAxisCount: orientation == Orientation.portrait ? 3 : 5,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    children: [
                      _card(img: 'assets/images/Frame.png',
                      nomeCard: 'Acerola',
                      preco: 'R\$:2,98',
                      ),
                      _card(img: 'assets/images/Frame1.png',
                      nomeCard: 'Manga',
                      preco: 'R\$:6,86',
                      ),
                      _card(img: 'assets/images/Frame2.png',
                      nomeCard: 'Maça Verde',
                      preco: 'R\$:8,86',
                      ),
                      _card(img: 'assets/images/Frame3.png',
                      nomeCard: 'Raspberry',
                      preco: 'R\$:10,32',
                      ),
                      _card(img: 'assets/images/Frame4.png',
                      nomeCard: 'Kiwi',
                      preco: 'R\$:7,29',
                      ),
                      _card(img: 'assets/images/Frame5.png',
                      nomeCard: 'Melancia',
                      preco: 'R\$:2,50',
                      ),
                      _card(img: 'assets/images/Frame6.png',
                      nomeCard: 'Uva',
                      preco: 'R\$:7,88',
                      ),
                      _card(img: 'assets/images/Frame7.png',
                      nomeCard: 'Laranja',
                      preco: 'R\$:9,99',
                      ),
                      _card(img: 'assets/images/Frame8.png',
                      nomeCard: 'Morando',
                      preco: 'R\$:14,49',
                      ),
                    ]
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: TextButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue),
                    ),
                    child: const Text(
                      "Comprar",
                      style: TextStyle(color: Colors.white), 
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
    }
  );
  }
}

Widget _card({required String img, required String nomeCard, required String preco}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
        
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(img),
        Text(nomeCard, 
          style: TextStyle(color: Colors.indigo),
        ),
        Text(preco, 
          style: TextStyle(
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}
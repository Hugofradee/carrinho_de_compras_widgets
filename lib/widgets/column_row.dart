import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class ColumnRowView extends StatelessWidget {
  const ColumnRowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black54),
      drawer: Drawer(
      child: ListView(
      children: ListMenu.get(context),
        ),
          ),
          body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text("Testando 1 2 3... ppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp"),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text("teste tetando oque esta testado. ppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Text("Testando 1 2 3... ppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp"),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text("Testando 1 2 3... ppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp"),
                    ),
                  ],
                ),
                ],
            ),
            Container(
              width: 120,
              height: 70,
              color: Colors.amberAccent,
            ),
          ],
        ),
    );
  }
}
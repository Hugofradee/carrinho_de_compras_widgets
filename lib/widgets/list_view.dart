import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class ListViewView extends StatelessWidget {
  const ListViewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
      ),
      drawer: Drawer(
        child: ListView(
        children: ListMenu.get(context),
        ),
      ),
      body: ListView.builder(
      itemCount: 31,
      itemBuilder: (ctx, i){
          return Container(
            width:100,
            height: 100,
            color: Colors.black,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text("$i",style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          );
        },
      ),
    );
  }
}
import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black54,),
      drawer: Drawer(
        child: ListView(
        children: ListMenu.get(context),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 200,height: 200,
             color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
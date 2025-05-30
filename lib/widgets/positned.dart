import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class PositinedView extends StatelessWidget {
  const PositinedView({super.key});

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
        alignment: Alignment.topRight,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            child: Container(
              width: 300,
              height: 300,
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 8,
            right: -32,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class MediaQueryView extends StatelessWidget {
  const MediaQueryView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black54,),
      drawer: Drawer(
        child: ListView(
        children: ListMenu.get(context),
        ),
      ),
      body: Container(
        width: size.width,
        color: Colors.green,
        child: Text("Hugo",
        style: TextStyle(
          fontSize: 30,
          color: Colors.white
          ),
        ),
      ),
    );
  }
}
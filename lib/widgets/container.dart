import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: ListView(
          children: ListMenu.get(context),
          ),
        ),
      appBar: AppBar(backgroundColor: Colors.black54,),
      body: Container(
        width: 200,
        height: 200,
        margin: EdgeInsets.all(80),
        padding: EdgeInsets.all(50),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.black, width: 10),
        ), 
        child: Text("treinaWEB"),
      ),
    );
  }
}
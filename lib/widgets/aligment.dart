import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class AlimentView extends StatelessWidget {
  const AlimentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: ListView(
          children: ListMenu.get(context),
          ),
        ),
      appBar: AppBar(backgroundColor: Colors.red,),
      body: Center(
        child: Text("treinaWEB",
          style: TextStyle(fontSize: 45),
        ),
      ),
    );
  }
}
import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class RowView extends StatelessWidget {
  const RowView({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
        children: ListMenu.get(context),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(10 ,
          (index) => Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            color: Colors.blue,
            child: Text("$index", style: TextStyle(fontSize: 30 ),),
            ),
          ),
        ),
      ) 
    );
  }
}
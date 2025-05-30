import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black54,),
      drawer: Drawer(
        child: ListView(
        children: ListMenu.get(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(20,
            (index) => Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              color: Colors.blue,
              child: Text("$index", style: TextStyle(fontSize: 30 ),),
              ),
            ),
          ),
        ),
      ) 
    );
  }
}
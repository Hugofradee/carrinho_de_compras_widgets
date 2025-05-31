import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class ExpandedFlexibleView extends StatelessWidget {
  const ExpandedFlexibleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black54,),
      drawer: Drawer(
        child: ListView(
        children: ListMenu.get(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(flex: 2,
            child: Container(color: Colors.blue,),
            ),
          Expanded(
            child: Container(color: Colors.red,),
            ),
          Expanded(
            child: Container(color: Colors.purple,),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              height: 80,
              color: Colors.green),
          ),
        ],
      ),
    );
  }
}
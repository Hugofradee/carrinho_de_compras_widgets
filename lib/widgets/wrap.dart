import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class WrapView extends StatelessWidget {
  const WrapView({super.key});

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
        child: Wrap(
          alignment: WrapAlignment.spaceAround,
          spacing: 10,
          runSpacing: 10,
          children: List.generate(
            220,
            (index) => Container(
            color: Colors.blue,
              child: Text(
                index.toString(),
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class OrientationBuilderView extends StatelessWidget {
  const OrientationBuilderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black54,),
      drawer: Drawer(
        child: ListView(
        children: ListMenu.get(context),
        ),
      ),
      body: OrientationBuilder(builder: (ctx, orientation){
        return GridView.count(
          // landscape = panorama
          //portrait = retrato
          crossAxisCount: orientation == Orientation.landscape ? 8 : 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(10),
          children:
            List.generate(
              50,
              (index) => Container(
                alignment: Alignment.center,
                color: Colors.grey,
                child:  Text("$index",
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
        );
      }),
    );
  }
}
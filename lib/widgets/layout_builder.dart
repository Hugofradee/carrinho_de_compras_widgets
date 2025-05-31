import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class LayoutBuilderView extends StatelessWidget {
  const LayoutBuilderView({super.key});

@override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const percent = 3;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black54,),
      drawer: Drawer(
        child: ListView(
        children: ListMenu.get(context),
        ),
      ),
      body: LayoutBuilder(builder: (ctx, constrains){
        return Column(
          children: [
            Container(
              width: constrains.maxWidth,
              height: constrains.maxHeight / percent,
              color: Colors.red,
            ),
            Container(
              width: constrains.maxWidth,
              height: constrains.maxHeight / percent,
              color: Colors.green ,
            ),
              Container(
                width: constrains.maxWidth,
                height: constrains.maxHeight / percent,
                padding: EdgeInsets.all(18),
                color: Colors.blue,
                child:  LayoutBuilder(builder: (ctx, constrains2){
                  return Column(
                    children: [
                      Container(
                        width: constrains2.maxWidth,
                        height: constrains2.maxHeight,
                        color: Colors.purple,
                      ),
                    ],
                  );
                }
              ),
            ),  
          ],
        );
      }),
    );
  }
}
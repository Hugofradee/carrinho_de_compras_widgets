import 'package:carrinho_de_compras/projeto/index.dart';
import 'package:carrinho_de_compras/widgets/aligment.dart';
import 'package:carrinho_de_compras/widgets/column.dart';
import 'package:carrinho_de_compras/widgets/column_row.dart';
import 'package:carrinho_de_compras/widgets/container.dart';
import 'package:carrinho_de_compras/widgets/grid_view.dart';
import 'package:carrinho_de_compras/widgets/list_view.dart';
import 'package:carrinho_de_compras/widgets/positned.dart';
import 'package:carrinho_de_compras/widgets/row.dart';
import 'package:carrinho_de_compras/widgets/stack.dart';
import 'package:carrinho_de_compras/widgets/wrap.dart';
import 'package:flutter/material.dart';

class ListMenu{
  ListMenu._();

  static List<Widget> get(BuildContext context) {
    return [
      UserAccountsDrawerHeader(accountName: Text("Hugo Frade"),
        accountEmail: Text("hugo.frade@gmail.com"),
        currentAccountPicture: ClipOval(
          child: Image.network("https://avatars.githubusercontent.com/u/174284055?v=4")
        ),
      ),
      TextButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx)=> CarrinhoDeCompras()),
        );
        }, 
        child: Text("carrinho de compras"),
      ),
      TextButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx)=> ContainerView()),
        );
        }, 
        child: Text("Container"),
      ),
      TextButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx)=> AlimentView()),
        );
        }, 
        child: Text("Aligment"),
      ),
      TextButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx)=> RowView()),
        );
        }, 
        child: Text("Row"),
      ),
      TextButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx)=> ColumnView()),
        );
        }, 
        child: Text("Column"),
      ),
      TextButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx)=> ColumnRowView()),
        );
        }, 
        child: Text("Column e row"),
      ),
      TextButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx)=> ListViewView()),
        );
        }, 
        child: Text("List view"),
      ),
      TextButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx)=> WrapView()),
        );
        }, 
        child: Text("Wrap view"),
      ),
      TextButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx)=> GridViewView()),
        );
        }, 
        child: Text("Grid View"),
      ),
      TextButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx)=> StackView()),
        );
        }, 
        child: Text("Stack View"),
      ),
      TextButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx)=> PositinedView()),
        );
        }, 
        child: Text("positned View"),
      ),
    ];
  }
}
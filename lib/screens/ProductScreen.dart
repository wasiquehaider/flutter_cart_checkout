import 'package:cart_app/ProductModel.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {


  final ValueSetter<ProductModel> _valueSetter;

  ProductScreen(this._valueSetter);

  List<ProductModel> products = [
    ProductModel("Mic", 50),
    ProductModel("Mouse", 5),
    ProductModel("Speaker", 10),
    ProductModel("LED Monitor", 100),
    ProductModel("CD", 3),
    ProductModel("Keyboard", 25),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context,index){
          return ListTile(
            title: Text(products[index].name),
            trailing: Text("\$${products[index].price}", style: TextStyle(color: Colors.redAccent, fontSize: 20,fontWeight: FontWeight.w500),),
          onTap: (){
              _valueSetter(products[index]);
          },
          );
        },
        separatorBuilder: (context,index) => Divider(),
        itemCount: products.length);
  }
}

import 'package:flutter/material.dart';
import 'package:navigate/models/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key, required this.product});
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: () {

      // },
      appBar: AppBar(
        title: Text("Description"),
      ),
      body: Center(
        child: Column(
          children: [
            Hero(
                tag: product.name!,
                child: Image.network(
                  product.image!,
                  width: 200,
                  height: 200,
                )),
            Text(product.name!),
            Text(product.category!),
            Text(product.price.toString()!),
          ],
        ),
      ),
    );
  }
}

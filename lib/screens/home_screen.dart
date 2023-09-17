import 'package:flutter/material.dart';
import 'package:navigate/models/product_model.dart';
import 'package:navigate/screens/product_details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<ProductModel> products = [
    ProductModel(
        name: "t-shirt",
        category: "clothes",
        price: "20",
        image:
            "https://img3.junaroad.com/uiproducts/18507578/pri_175_p-1687937094.jpg"),
    ProductModel(
        name: "shoes",
        category: "Shoes",
        price: "40",
        image:
            "https://cdn.thewirecutter.com/wp-content/media/2023/05/running-shoes-2048px-9718.jpg"),
    ProductModel(
        name: "t-shirt1",
        category: "clothes",
        price: "20",
        image:
            "https://img3.junaroad.com/uiproducts/18507578/pri_175_p-1687937094.jpg"),
    ProductModel(
        name: "shoes2",
        category: "Shoes",
        price: "40",
        image:
            "https://cdn.thewirecutter.com/wp-content/media/2023/05/running-shoes-2048px-9718.jpg"),
    ProductModel(
        name: "t-shirt3",
        category: "clothes",
        price: "20",
        image:
            "https://img3.junaroad.com/uiproducts/18507578/pri_175_p-1687937094.jpg"),
    ProductModel(
        name: "shoes3",
        category: "Shoes",
        price: "40",
        image:
            "https://cdn.thewirecutter.com/wp-content/media/2023/05/running-shoes-2048px-9718.jpg"),
    ProductModel(
        name: "t-shirt5",
        category: "clothes",
        price: "20",
        image:
            "https://img3.junaroad.com/uiproducts/18507578/pri_175_p-1687937094.jpg"),
    ProductModel(
        name: "shoes5",
        category: "Shoes",
        price: "40",
        image:
            "https://cdn.thewirecutter.com/wp-content/media/2023/05/running-shoes-2048px-9718.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("products"),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailsScreen(
                          product: products[index],
                        ),
                      ));
                },
                leading: Hero(
                  tag: products[index].name!,
                  child: Image.network(
                    products[index].image!,
                    width: 50,
                    height: 60,
                  ),
                ),
                title: Text(products[index].name!),
                subtitle: Text(products[index].category!),
                trailing: Text(products[index].price!.toString()));
          },
        ));
  }
}

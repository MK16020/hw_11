import 'package:flutter/material.dart';

import '../models/product.dart';

class Item extends StatelessWidget {
  final Product product;
  final int index;
  const Item({Key? key, required this.product, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 80),
            child: Column(
              children: [
                Image(
                  image: AssetImage(product.imageUrl),
                  height: 300,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(product.name),
                const SizedBox(
                  height: 10,
                ),
                Text(product.price.toString()),
                const SizedBox(
                  height: 10,
                ),
                Text(product.description),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      product.addItemToCart(index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Add to the cart'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

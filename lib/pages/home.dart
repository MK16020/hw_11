import 'package:flutter/material.dart';

import '../models/product.dart';
import 'item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: ListView(
          children: <Widget>[
            const Text('data'),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 350.0,
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Component(product: products[index], index: index),
                  ),
                ),
              ),
            ),
            const Categories(),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (int i = 1; i < 7; i++)
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Image(
              image: AssetImage('images/cate' + i.toString() + '.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        // const SizedBox(height: 10),
      ],
    );
  }
}

class Component extends StatelessWidget {
  final Product product;
  final int index;
  const Component({
    Key? key,
    required this.product,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Item(
                    product: products[index],
                    index: index,
                  ))),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
        width: 200,
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Image(
                image: AssetImage(product.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(product.name, style: const TextStyle(fontSize: 12)),
            )
          ],
        ),
      ),
    );
  }
}

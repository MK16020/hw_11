import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const header(),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xfff5f7f9),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  ProductsInfo(),
                  SizedBox(
                    height: 20,
                  ),
                  CartInfo(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartInfo extends StatelessWidget {
  const CartInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: 450,
      child: Column(
        children: const [
          SizedBox(
            height: 30,
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text('Hello'),
              trailing: Text('why nobody told me '),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductsInfo extends StatelessWidget {
  const ProductsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: 450,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 26),
      child: Column(
        children: const [
          Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://cdn.salla.sa/Aedxd/b3hTFtpS0z8gpopInh1YDxifGRAmy66kcuVbDxfS.jpg'),
              ),
              title: Text('product name'),
              trailing: Icon(Icons.cancel),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text('Hello'),
              trailing: Text('why nobody told me '),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text('Hello'),
              trailing: Text('why nobody told me '),
            ),
          ),
        ],
      ),
    );
  }
}

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CartHeader(),
          Divider(),
          CartHeader(),
        ],
      ),
    );
  }
}

class CartHeader extends StatelessWidget {
  const CartHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: const Color(0xffa4bea0),
          height: 52,
          width: 52,
          child: const Icon(Icons.shopping_cart_outlined),
        ),
        Column(
          children: const [
            Text('data'),
            Text('data'),
          ],
        )
      ],
    );
  }
}

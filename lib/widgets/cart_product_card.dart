import 'package:flutter/material.dart';

import '../models/models.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  const CartProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Image.network(
            product.imageUrl,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text('\$${product.price}'),
                ],
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.remove_circle,
                color: Colors.black,
              )),
          Text(
            '1',
            style: Theme.of(context).textTheme.headline5,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

import 'package:ecommerce/models/product_model.dart';
import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class WishListScreen extends StatelessWidget {
  static const routeName = '/wishlist';
  const WishListScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const WishListScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Wishlist'),
      bottomNavigationBar: const CustomNavBar(),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 2.4),
        itemCount: Product.products.length,
        itemBuilder: (context, index) => Center(
          child: ProductCard(
            product: Product.products[index],
            widthFactor: 1.1,
            leftPosition: 100,
            isWishList: true,
            sizedBoxWidth: 100,
          ),
        ),
      ),
    );
  }
}

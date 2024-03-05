import 'package:flutter/material.dart';
import '../../models/models.dart';
import '../../widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  static const routeName = '/catalog';
  const CatalogScreen({super.key, required this.category});

  static Route route({required Category category}) {
    return MaterialPageRoute(
      builder: (context) => CatalogScreen(category: category),
      settings: const RouteSettings(name: routeName),
    );
  }

  final Category category;

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppBar(title: category.name),
      bottomNavigationBar: const CustomNavBar(),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.15),
        itemCount: categoryProducts.length,
        itemBuilder: (context, index) => Center(
          child: ProductCard(
            product: categoryProducts[index],
            widthFactor: 2.2,
            sizedBoxWidth: 50,
          ),
        ),
      ),
    );
  }
}

import 'package:equatable/equatable.dart';
import 'product_model.dart';

// ignore: must_be_immutable
class Cart extends Equatable {
  double get subTotal =>
      products.fold(0, (total, current) => total + current.price);

  double deliveryFee(subTotal) {
    if (subTotal >= 30) {
      return 0.0;
    } else {
      return 10.0;
    }
  }

  String freeDelivery(subTotal) {
    if (subTotal >= 30.0) {
      return 'You have free Delivery';
    } else {
      double missing = 30.0 - subTotal;
      return 'Add \$${missing.toStringAsFixed(2)} for Free Delivery';
    }
  }

  double total(subTotal, deliveryFee) {
    return subTotal + deliveryFee(subTotal);
  }

  String get subTotalString => subTotal.toStringAsFixed(2);
  String get deliveryFeeString => deliveryFee(subTotal).toStringAsFixed(2);
  String get freeDeliveryString => freeDelivery(subTotal);
  String get totalString => total(subTotal, deliveryFee).toStringAsFixed(2);

  Cart();
  List<Product> products = [
    const Product(
      name: 'Soft Drink #1',
      imageUrl:
          'https://images.unsplash.com/photo-1594971475674-6a97f8fe8c2b?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      category: 'Soft Drinks',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      name: 'Soft Drink #2',
      imageUrl:
          'https://images.unsplash.com/photo-1632161927166-0aea13d8f7e6?q=80&w=2991&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      category: 'Soft Drinks',
      price: 2.99,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: 'Soft Drink #3',
      imageUrl:
          'https://images.unsplash.com/photo-1531384370597-8590413be50a?q=80&w=2980&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      category: 'Soft Drinks',
      price: 2.99,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: 'Smoothies #1',
      imageUrl:
          'https://images.unsplash.com/photo-1604298331663-de303fbc7059?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      category: 'Smoothies',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
  ];
  @override
  List<Object?> get props => [];
}

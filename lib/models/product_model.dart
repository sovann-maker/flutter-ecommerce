import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String imageUrl;
  final String category;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.imageUrl,
    required this.category,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        category,
        price,
        isRecommended,
        isPopular,
      ];

  static List<Product> products = [
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
    const Product(
      name: 'Smoothies #2',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1669686982303-7da68cdd4595?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      category: 'Smoothies',
      price: 2.99,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: 'Water #1',
      imageUrl:
          'https://akasa-s3-srv01.s3.ap-southeast-1.amazonaws.com/uploads/all/mUE0oXWHX9W38jHGux3fzUXLVdpMK0uj6ghFFLY3.jpg',
      category: 'Water',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      name: 'Water #2',
      imageUrl:
          'https://www.evian.com/fileadmin/user_upload/home-hero-bg-sm_new.jpg',
      category: 'Water',
      price: 2.99,
      isRecommended: false,
      isPopular: true,
    ),
  ];
}

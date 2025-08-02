part of 'seller_products_imports.dart';

class PopularProductsController {
  // Static data for seller products
  final List<SellerProductItemModel> staticProducts = [
    SellerProductItemModel(
      id: '1',
      name: 'Premium Wireless Headphones',
      categoryName: 'Electronics',
      thumbnailImage: 'https://thumbs.wbm.im/pw/small/512e083573eee682f1a843c76f98cdb8.jpg',
      price: '199.99AED',
      originalPrice: '299.99AED',
      rating: 4.5,
      hasDiscount: true,
      discount: '33%',
      isWishlist: false,
    ),
    SellerProductItemModel(
      id: '2',
      name: 'Smart Fitness Watch',
      categoryName: 'Wearables',
      thumbnailImage: 'https://thumbs.wbm.im/pw/small/512e083573eee682f1a843c76f98cdb8.jpg',
      price: '149.99AED',
      originalPrice: '199.99AED',
      rating: 4.2,
      hasDiscount: true,
      discount: '25%',
      isWishlist: true,
    ),
    SellerProductItemModel(
      id: '3',
      name: 'Organic Coffee Beans',
      categoryName: 'Food & Beverages',
      thumbnailImage: 'https://thumbs.wbm.im/pw/small/512e083573eee682f1a843c76f98cdb8.jpg',
      price: '24.99AED',
      originalPrice: '24.99AED',
      rating: 4.8,
      hasDiscount: false,
      discount: '',
      isWishlist: false,
    ),
    SellerProductItemModel(
      id: '4',
      name: 'Designer Leather Bag',
      categoryName: 'Food',
      thumbnailImage: 'https://thumbs.wbm.im/pw/small/512e083573eee682f1a843c76f98cdb8.jpg',
      price: '89.99AED',
      originalPrice: '129.99AED',
      rating: 4.0,
      hasDiscount: true,
      discount: '31%',
      isWishlist: true,
    ),
  ];

  // For static data, we don't need paging controller
  // This is a simplified version for demonstration
}
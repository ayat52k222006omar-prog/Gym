class ProductModel {
  final String productTitle;  
  final String productImage;   
  final double price;          
  final String subtitle;      
  final String category;      
  final bool isAvailable;     
  final String? statusMessage; 

  ProductModel({
    required this.productTitle,
    required this.productImage,
    required this.price,
    required this.subtitle,
    required this.category,
    this.isAvailable = true,
    this.statusMessage, required double rating, required int reviewsCount, required String description,
  });

  String? get description => null;
}
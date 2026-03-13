class Product {
  final int id;
  final String name;
  final String price;
  final String image;
  final String description;
  final String category;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] is int ? json['id'] : int.tryParse(json['id'].toString()) ?? 0,
      name: json['name'] ?? json['title'] ?? '',
      price: json['price']?.toString() ?? '0',
      image: json['image'] ?? json['thumbnail'] ?? json['img'] ?? '',
      description: json['description'] ?? json['desc'] ?? '',
      category: json['category'] ?? '',
    );
  }
}

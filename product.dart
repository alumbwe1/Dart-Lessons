class Product {
  final String name;
  final String description;
  final int price;
  final int expire;
  final bool available;
  Product(this.name, this.description, this.price, this.expire, this.available);
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'expire': expire,
      'availabe': available,
    };
  }

  static Product fromJson(Map<String, dynamic> json) {
    return Product(json['name'] ?? '', json['description'] ?? '',
        json['price'] ?? '', json['expire'] ?? '', json['available'] ?? false);
  }
}

List<Product> products = [];

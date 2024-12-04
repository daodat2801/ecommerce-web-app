class ProductDetailModel {
  Page page;

  ProductDetailModel({required this.page});

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) {
    return ProductDetailModel(
      page: Page.fromJson(json['page']),
    );
  }
}

class Page {
  String title;
  List<Section> sections;

  Page({required this.title, required this.sections});

  factory Page.fromJson(Map<String, dynamic> json) {
    return Page(
      title: json['title'],
      sections: (json['sections'] as List)
          .map((sectionJson) => Section.fromJson(sectionJson))
          .toList(),
    );
  }
}

class Section {
  String type;
  List<Element> elements;

  Section({required this.type, required this.elements});

  factory Section.fromJson(Map<String, dynamic> json) {
    return Section(
      type: json['type'],
      elements: (json['elements'] as List)
          .map((elementJson) => Element.fromJson(elementJson))
          .toList(),
    );
  }
}

class Element {
  String type;
  dynamic content;

  Element({required this.type, this.content});

  factory Element.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'logo':
        return Element(type: 'logo', content: json['text']);
      case 'navigation':
      case 'auth':
        return Element(
          type: json['type'],
          content: (json['links'] as List)
              .map((linkJson) => Link.fromJson(linkJson))
              .toList(),
        );
      case 'product':
        return Element(
          type: 'product',
          content: ProductDetail.fromJson(json),
        );
      case 'bestseller_products':
        return Element(
          type: 'bestseller_products',
          content: BestsellerProducts.fromJson(json),
        );
      default:
        return Element(type: json['type'], content: json['content']);
    }
  }
}

class Link {
  String text;
  String url;

  Link({required this.text, required this.url});

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(
      text: json['text'],
      url: json['url'],
    );
  }
}

class ProductDetail {
  final String name;
  final double price;
  final String currency;
  final int rating;
  final int reviewsCount;
  final String availability;
  final List<String> colors;
  final ProductDescription description;
  final AdditionalInfo additionalInfo;
  final List<Review> reviews;

  ProductDetail({
    required this.name,
    required this.price,
    required this.currency,
    required this.rating,
    required this.reviewsCount,
    required this.availability,
    required this.colors,
    required this.description,
    required this.additionalInfo,
    required this.reviews,
  });

  factory ProductDetail.fromJson(Map<String, dynamic> json) {
    List sections = json['sections'];
    return ProductDetail(
      name: json['name'],
      price: json['price'].toDouble(),
      currency: json['currency'],
      rating: json['rating'],
      reviewsCount: json['reviewsCount'],
      availability: json['availability'],
      colors: List<String>.from(json['colors']),
      description: ProductDescription.fromJson(
          _getSectionByType(sections, 'description')),
      additionalInfo: AdditionalInfo.fromJson(
          _getSectionByType(sections, 'additional_info')),
      reviews: (_getSectionByType(sections, 'reviews')['content'] as List)
          .map((reviewJson) => Review.fromJson(reviewJson))
          .toList(),
    );
  }

  static Map<String, dynamic> _getSectionByType(
      List<dynamic> sections, String type) {
    return sections.firstWhere((section) => section['type'] == type);
  }
}

class ProductDescription {
  String title;
  String content;

  ProductDescription({required this.title, required this.content});

  factory ProductDescription.fromJson(Map<String, dynamic> json) {
    return ProductDescription(
      title: json['title'],
      content: json['content'],
    );
  }
}

class AdditionalInfo {
  String title;
  String content;

  AdditionalInfo({required this.title, required this.content});

  factory AdditionalInfo.fromJson(Map<String, dynamic> json) {
    return AdditionalInfo(
      title: json['title'],
      content: json['content'],
    );
  }
}

class Review {
  String user;
  int rating;
  String comment;

  Review({required this.user, required this.rating, required this.comment});

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      user: json['user'],
      rating: json['rating'],
      comment: json['comment'],
    );
  }
}

class BestsellerProducts {
  String title;
  List<BestSellerProduct> products;

  BestsellerProducts({required this.title, required this.products});

  factory BestsellerProducts.fromJson(Map<String, dynamic> json) {
    return BestsellerProducts(
      title: json['title'],
      products: (json['products'] as List)
          .map((productJson) => BestSellerProduct.fromJson(productJson))
          .toList(),
    );
  }
}

class BestSellerProduct {
  String name;
  String department;
  double originalPrice;
  double discountedPrice;
  String image;

  BestSellerProduct({
    required this.name,
    required this.department,
    required this.originalPrice,
    required this.discountedPrice,
    required this.image,
  });

  factory BestSellerProduct.fromJson(Map<String, dynamic> json) {
    return BestSellerProduct(
      name: json['name'],
      department: json['department'],
      originalPrice: json['originalPrice'].toDouble(),
      discountedPrice: json['discountedPrice'].toDouble(),
      image: json['image'],
    );
  }
}

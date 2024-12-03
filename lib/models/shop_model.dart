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

  Element({required this.type, required this.content});

  factory Element.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'logo':
        return Element(type: 'logo', content: json['text']);
      case 'navigation':
        return Element(
            type: 'navigation',
            content: (json['links'] as List)
                .map((linkJson) => Link.fromJson(linkJson))
                .toList());
      case 'auth':
        return Element(
            type: 'auth',
            content: (json['links'] as List)
                .map((linkJson) => Link.fromJson(linkJson))
                .toList());
      case 'category':
        return Element(
            type: 'category',
            content: (json['items'] as List)
                .map((itemJson) => CategoryItem.fromJson(itemJson))
                .toList());
      case 'products':
        return Element(
            type: 'products',
            content: (json['items'] as List)
                .map((itemJson) => Product.fromJson(itemJson))
                .toList());
      case 'filter':
        return Element(
            type: 'filter',
            content: (json['options'] as List)
                .map((optionJson) => FilterOption.fromJson(optionJson))
                .toList());
      case 'pagination':
        return Element(
            type: 'pagination',
            content: (json['controls'] as List)
                .map((controlJson) => PaginationControl.fromJson(controlJson))
                .toList());
      default:
        return Element(type: 'unknown', content: null);
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

class CategoryItem {
  String name;
  int count;

  CategoryItem({required this.name, required this.count});

  factory CategoryItem.fromJson(Map<String, dynamic> json) {
    return CategoryItem(
      name: json['name'],
      count: json['count'],
    );
  }
}

class Product {
  String name;
  String department;
  double originalPrice;
  double discountedPrice;
  String image;

  Product({
    required this.name,
    required this.department,
    required this.originalPrice,
    required this.discountedPrice,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      department: json['department'],
      originalPrice: json['originalPrice'].toDouble(),
      discountedPrice: json['discountedPrice'].toDouble(),
      image: json['image'],
    );
  }
}

class FilterOption {
  String text;
  String value;

  FilterOption({required this.text, required this.value});

  factory FilterOption.fromJson(Map<String, dynamic> json) {
    return FilterOption(
      text: json['text'],
      value: json['value'],
    );
  }
}

class PaginationControl {
  String text;
  String action;

  PaginationControl({required this.text, required this.action});

  factory PaginationControl.fromJson(Map<String, dynamic> json) {
    return PaginationControl(
      text: json['text'],
      action: json['action'],
    );
  }
}

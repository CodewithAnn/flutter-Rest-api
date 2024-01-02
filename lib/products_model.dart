
class ProductModel {
  bool? success;
  String? message;
  List<Data>? data;

  ProductModel({this.success, this.message, this.data});

  ProductModel.fromJson(Map<String, dynamic> json) {
    success = json["success"];
    message = json["message"];
    data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Data {
  String? id;
  bool? onSale;
  int? salePercent;
  int? sold;
  bool? sliderNew;
  bool? sliderRecent;
  bool? sliderSold;
  String? date;
  String? title;
  Categories? categories;
  Subcat? subcat;
  Shop? shop;
  String? price;
  String? saleTitle;
  String? salePrice;
  String? description;
  String? color;
  String? size;
  bool? inWishlist;
  List<Images>? images;

  Data({this.id, this.onSale, this.salePercent, this.sold, this.sliderNew, this.sliderRecent, this.sliderSold, this.date, this.title, this.categories, this.subcat, this.shop, this.price, this.saleTitle, this.salePrice, this.description, this.color, this.size, this.inWishlist, this.images});

  Data.fromJson(Map<String, dynamic> json) {
    id = json["_id"];
    onSale = json["on_sale"];
    salePercent = json["sale_percent"];
    sold = json["sold"];
    sliderNew = json["slider_new"];
    sliderRecent = json["slider_recent"];
    sliderSold = json["slider_sold"];
    date = json["date"];
    title = json["title"];
    categories = json["categories"] == null ? null : Categories.fromJson(json["categories"]);
    subcat = json["subcat"] == null ? null : Subcat.fromJson(json["subcat"]);
    shop = json["shop"] == null ? null : Shop.fromJson(json["shop"]);
    price = json["price"];
    saleTitle = json["sale_title"];
    salePrice = json["sale_price"];
    description = json["description"];
    color = json["color"];
    size = json["size"];
    inWishlist = json["in_wishlist"];
    images = json["images"] == null ? null : (json["images"] as List).map((e) => Images.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["on_sale"] = onSale;
    _data["sale_percent"] = salePercent;
    _data["sold"] = sold;
    _data["slider_new"] = sliderNew;
    _data["slider_recent"] = sliderRecent;
    _data["slider_sold"] = sliderSold;
    _data["date"] = date;
    _data["title"] = title;
    if(categories != null) {
      _data["categories"] = categories?.toJson();
    }
    if(subcat != null) {
      _data["subcat"] = subcat?.toJson();
    }
    if(shop != null) {
      _data["shop"] = shop?.toJson();
    }
    _data["price"] = price;
    _data["sale_title"] = saleTitle;
    _data["sale_price"] = salePrice;
    _data["description"] = description;
    _data["color"] = color;
    _data["size"] = size;
    _data["in_wishlist"] = inWishlist;
    if(images != null) {
      _data["images"] = images?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Images {
  String? id;
  String? url;

  Images({this.id, this.url});

  Images.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["url"] = url;
    return _data;
  }
}

class Shop {
  String? id;
  bool? isActive;
  String? createdAt;
  String? name;
  String? description;
  String? shopemail;
  String? shopaddress;
  String? shopcity;
  String? userid;
  String? image;

  Shop({this.id, this.isActive, this.createdAt, this.name, this.description, this.shopemail, this.shopaddress, this.shopcity, this.userid, this.image});

  Shop.fromJson(Map<String, dynamic> json) {
    id = json["_id"];
    isActive = json["is_active"];
    createdAt = json["created_At"];
    name = json["name"];
    description = json["description"];
    shopemail = json["shopemail"];
    shopaddress = json["shopaddress"];
    shopcity = json["shopcity"];
    userid = json["userid"];
    image = json["image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["is_active"] = isActive;
    _data["created_At"] = createdAt;
    _data["name"] = name;
    _data["description"] = description;
    _data["shopemail"] = shopemail;
    _data["shopaddress"] = shopaddress;
    _data["shopcity"] = shopcity;
    _data["userid"] = userid;
    _data["image"] = image;
    return _data;
  }
}

class Subcat {
  String? id;
  String? type;
  int? salePercent;
  String? date;
  String? name;

  Subcat({this.id, this.type, this.salePercent, this.date, this.name});

  Subcat.fromJson(Map<String, dynamic> json) {
    id = json["_id"];
    type = json["type"];
    salePercent = json["sale_percent"];
    date = json["date"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["type"] = type;
    _data["sale_percent"] = salePercent;
    _data["date"] = date;
    _data["name"] = name;
    return _data;
  }
}

class Categories {
  String? id;
  String? type;
  int? salePercent;
  String? date;
  String? name;
  String? image;

  Categories({this.id, this.type, this.salePercent, this.date, this.name, this.image});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json["_id"];
    type = json["type"];
    salePercent = json["sale_percent"];
    date = json["date"];
    name = json["name"];
    image = json["image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["type"] = type;
    _data["sale_percent"] = salePercent;
    _data["date"] = date;
    _data["name"] = name;
    _data["image"] = image;
    return _data;
  }
}
import 'package:ecommerce/data/models/product_details.dart';

class ProductDetailsModel {
  String? msg;
  List<ProductDetails>? data;

  ProductDetailsModel({this.msg, this.data});

  ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      data = <ProductDetails>[];
      json['data'].forEach((v) {
        data!.add(ProductDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


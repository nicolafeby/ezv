import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class ProductEntities extends Equatable {
  // @JsonKey(includeFromJson: true, includeToJson: true)
  @JsonKey(ignore: true)
  final List<ProductsItemEntities>? productsItem;

  final int? total;
  final int? skip;
  final int? limit;

  const ProductEntities({
    this.productsItem,
    this.total,
    this.skip,
    this.limit,
  });
  @override
  List<Object?> get props => [productsItem, total, skip, limit];
}

class ProductsItemEntities extends Equatable {
  final int? id;
  final String? title;
  final String? description;
  final int? price;
  final double? discountPercentage;
  final double? rating;
  final int? stock;
  final String? brand;
  final String? category;
  final String? thumbnail;
  final List<String>? images;

  const ProductsItemEntities({
    this.id,
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.brand,
    this.category,
    this.thumbnail,
    this.images,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        price,
        discountPercentage,
        rating,
        stock,
        brand,
        category,
        thumbnail,
        images,
      ];
}

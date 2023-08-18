import 'package:ezv/domain/entities/product_entities.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_list_model.g.dart';

@JsonSerializable()
class ProductModel extends ProductEntities {
  @JsonKey(name: 'products')
  final List<ProductItemsModel>? productItemsModel;

  const ProductModel({
    required int? total,
    required int? skip,
    required int? limit,
    required this.productItemsModel,
  }) : super(
          productsItem: productItemsModel,
          total: total,
          skip: skip,
          limit: limit,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

@JsonSerializable()
class ProductItemsModel extends ProductsItemEntities {
  const ProductItemsModel({
    required int? id,
    required String? title,
    required String? description,
    required int? price,
    required double discountPercentage,
    required double rating,
    required int? stock,
    required String? brand,
    required String? category,
    required String? thumbnail,
    required List<String>? images,
  }) : super(
          id: id,
          title: title,
          description: description,
          price: price,
          discountPercentage: discountPercentage,
          rating: rating,
          stock: stock,
          brand: brand,
          category: category,
          thumbnail: thumbnail,
          images: images,
        );

  factory ProductItemsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductItemsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductItemsModelToJson(this);
}

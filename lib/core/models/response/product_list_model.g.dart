// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      total: json['total'] as int?,
      skip: json['skip'] as int?,
      limit: json['limit'] as int?,
      productItemsModel: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductItemsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
      'products': instance.productItemsModel,
    };

ProductItemsModel _$ProductItemsModelFromJson(Map<String, dynamic> json) =>
    ProductItemsModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: json['price'] as int?,
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      stock: json['stock'] as int?,
      brand: json['brand'] as String?,
      category: json['category'] as String?,
      thumbnail: json['thumbnail'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductItemsModelToJson(ProductItemsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'stock': instance.stock,
      'brand': instance.brand,
      'category': instance.category,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
    };

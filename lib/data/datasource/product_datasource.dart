import 'package:ezv/core/network/api_service.dart';
import 'package:ezv/domain/entities/product_entities.dart';

abstract class ProductRemoteDataSource {
  Future<ProductEntities> getProduct();
}

class VoucherRemoteDataSourceImpl implements ProductRemoteDataSource {
  final ApiService apiService;

  VoucherRemoteDataSourceImpl({required this.apiService});

  @override
  Future<ProductEntities> getProduct() async {
    final resp = apiService.getProduct();
    return resp;
  }
}

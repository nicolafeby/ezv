import 'package:dartz/dartz.dart';
import 'package:ezv/core/error/failures.dart';
import 'package:ezv/domain/entities/product_entities.dart';

abstract class ProductRepository {
  Future<Either<Failures, ProductEntities>> getVoucher();
}

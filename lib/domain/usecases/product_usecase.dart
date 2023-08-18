import 'package:dartz/dartz.dart';
import 'package:ezv/core/error/failures.dart';
import 'package:ezv/core/usecases/usecase.dart';
import 'package:ezv/domain/entities/product_entities.dart';
import 'package:ezv/domain/repositories/product_repositories.dart';

class ProductUsecase implements Usecase<ProductEntities, NoParams> {
  ProductRepository repository;
  ProductUsecase({required this.repository});
  @override
  Future<Either<Failures, ProductEntities>> call(NoParams params) async {
    return repository.getVoucher();
  }
}

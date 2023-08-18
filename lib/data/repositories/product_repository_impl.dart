import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:ezv/core/error/failures.dart';
import 'package:ezv/data/datasource/product_datasource.dart';
import 'package:ezv/domain/entities/product_entities.dart';
import 'package:ezv/domain/repositories/product_repositories.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failures, ProductEntities>> getVoucher() async {
    try {
      final resp = await remoteDataSource.getProduct();
      return Right(resp); // if (resp.statusCode == 200) return Right(resp);
      // return Left(ServerFailure('message'));
    } catch (e, stack) {
      log('[$runtimeType]: $e $stack');
      log('$e');
      return Left(ServerFailure(e.toString()));
    }
  }
}

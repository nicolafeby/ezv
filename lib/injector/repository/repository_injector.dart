part of '../injector.dart';

class RepositoryInjector {
  static Future<void> configureRepositoryInjector() async {
    sl.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl(remoteDataSource: sl()));
  }
}

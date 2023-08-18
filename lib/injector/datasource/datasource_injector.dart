part of '../injector.dart';

class DataSourceInjector {
  static Future<void> configureDataSourceInjector() async {
    sl.registerLazySingleton<ProductRemoteDataSource>(
        () => ProductRemoteDataSourceImpl(apiService: sl()));
  }
}

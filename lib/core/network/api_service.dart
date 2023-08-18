import 'package:dio/dio.dart';
import 'package:ezv/core/models/response/product_list_model.dart';
// import 'package:dio/io.dart';
import 'package:ezv/core/utils/app_constants.dart';
import 'package:ezv/domain/entities/product_entities.dart';
import 'package:ua_client_hints/ua_client_hints.dart';

class ApiService with DioMixin implements Dio {
  @override
  // HttpClientAdapter get httpClientAdapter => DefaultHttpClientAdapter();

  @override
  Interceptors get interceptors => Interceptors()
    ..add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      request: true,
      requestHeader: true,
      responseHeader: true,
    ))
    ..add(InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers.addAll(await userAgentClientHintsHeader());
      handler.next(options);
      return;
    }));

  @override
  BaseOptions get options => BaseOptions(
        baseUrl: AppConstant.baseUrl,
        contentType: 'application/json',
      );

      Future<ProductEntities> getProduct() async {
    var response = await get('https://dummyjson.com/products');
    return ProductModel.fromJson(response.data);
  }
}

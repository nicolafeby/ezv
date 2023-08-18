

import 'package:ezv/data/datasource/product_datasource.dart';
import 'package:ezv/data/repositories/product_repository_impl.dart';
import 'package:ezv/domain/repositories/product_repositories.dart';
import 'package:ezv/domain/usecases/product_usecase.dart';
import 'package:ezv/presentation/list/bloc/list_product_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:ezv/core/network/api_service.dart';

part 'bloc/bloc_injector.dart';
part 'datasource/datasource_injector.dart';
part 'common/common_injector.dart';
part 'repository/repository_injector.dart';
part 'usecase/usecase_injector.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await BlocInjector.configureBlocInjector();
  await DataSourceInjector.configureDataSourceInjector();
  await HelperInjector.configureHelperInjector();
  await RepositoryInjector.configureRepositoryInjector();
  await UsecaseInjector.configureUsecaseInjector();
}

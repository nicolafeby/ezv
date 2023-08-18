import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ezv/core/usecases/usecase.dart';
import 'package:ezv/domain/entities/product_entities.dart';
import 'package:ezv/domain/usecases/product_usecase.dart';

part 'list_product_event.dart';
part 'list_product_state.dart';

class ListProductBloc extends Bloc<ListProductEvent, ListProductState> {
  final ProductUsecase usecase;
  ListProductBloc({
    required this.usecase,
  }) : super(ListProductInProgress()) {
    on<ListProductStarted>(_onProductStarted);
  }

  _onProductStarted(
      ListProductStarted event, Emitter<ListProductState> emit) async {
    final resp = await usecase.call(NoParams());

    final updateState = resp.fold(
      (l) => ListProductLoadInFailure(),
      (r) => ListProductLoadInSuccess(entities: r),
    );

    emit(updateState);
  }
}

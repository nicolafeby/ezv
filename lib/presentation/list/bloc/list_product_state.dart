part of 'list_product_bloc.dart';

sealed class ListProductState extends Equatable {
  const ListProductState();

  @override
  List<Object> get props => [];
}

class ListProductInProgress extends ListProductState {}

class ListProductLoadInSuccess extends ListProductState {
  final ProductEntities entities;

  const ListProductLoadInSuccess({
    required this.entities,
  });

  @override
  List<Object> get props => [entities];
}

class ListProductLoadInFailure extends ListProductState {}

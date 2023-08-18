part of 'list_product_bloc.dart';

sealed class ListProductState extends Equatable {
  const ListProductState();
  
  @override
  List<Object> get props => [];
}

final class ListProductInitial extends ListProductState {}

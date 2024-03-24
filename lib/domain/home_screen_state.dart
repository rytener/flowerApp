import 'package:equatable/equatable.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

final class ProductLiked extends ProductState {}

final class ProductDisliked extends ProductState {}

import 'package:equatable/equatable.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class ProductLike extends ProductEvent {
  final bool isFavourite;

  const ProductLike(this.isFavourite);

  @override
  List<Object> get props => [isFavourite];
}

class ProductDislike extends ProductEvent {
  final bool isFavourite;

  const ProductDislike(this.isFavourite);

  @override
  List<Object> get props => [isFavourite];
}

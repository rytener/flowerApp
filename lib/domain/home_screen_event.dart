import 'package:equatable/equatable.dart';


abstract class ProductEvent extends Equatable{
  const ProductEvent();

  @override
  List<Object> get props =>[];
}
class ProductLike extends ProductEvent{
  final bool product;
  const ProductLike(this.product);
  @override
  List<Object> get props =>[product];
}
class ProductDislike extends ProductEvent{
  final bool product;
  const ProductDislike(this.product);
  @override
  List<Object> get props =>[product];
}
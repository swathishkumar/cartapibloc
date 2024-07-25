part of 'cart_bloc.dart';

class CartState {
  List<Cart>? clist;
  CartState({required this.clist});
}

final class CartInitial extends CartState {
  CartInitial({required super.clist});
}

import 'package:bloc/bloc.dart';
import 'package:cartapibloc/model/responsecartapi/cart.dart';
import 'package:cartapibloc/web/apiservices.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial(clist: [])) {
    on<Fetch>((event, emit) async {
      Apiservice apiService = Apiservice();
      var list = await apiService.fetchData();
      emit(CartState(clist: list));
      // TODO: implement event handler
    });
  }
}

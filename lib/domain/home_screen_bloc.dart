import 'package:bloc/bloc.dart';
import 'package:lilar_test_app/domain/home_screen_event.dart';
import 'package:lilar_test_app/domain/home_screen_state.dart';

class HomeScreenBloc extends Bloc<ProductEvent, ProductState> {
  HomeScreenBloc(super.initialState) {
    on<ProductLike>((event, emit) {
      emit(ProductLiked());
      on<ProductDislike>((event, emit) {
        emit(ProductDisliked());
      });
    });
  }
}

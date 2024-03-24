import 'package:lilar_test_app/domain/frmod.dart';
import 'package:bloc/bloc.dart';

class MyBloc extends Cubit<MyModal> {
  MyBloc()
      : super(
          const MyModal(id: '', name: ''),
        );

  void func() {
    emit(
      state.copyWith(id: "MyNewId"),
    );
  }
}

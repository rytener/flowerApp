import 'package:freezed_annotation/freezed_annotation.dart';

part 'frmod.freezed.dart';

@freezed
class MyModal with _$MyModal {
  const factory MyModal({
    required String id,
    required String name,
    int? age,
  }) = _MyModal;
}

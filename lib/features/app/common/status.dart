import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
class Status with _$Status {
  const factory Status.idle() = _StatusIdle;
  const factory Status.loading() = _StatusLoading;
  const factory Status.failure({dynamic error}) = _StatusFailure;
  const factory Status.success({dynamic data}) = _StatusSuccess;
}

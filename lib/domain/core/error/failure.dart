import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final StackTrace stackTrace;
  final String errorMessage;
  const Failure({required this.errorMessage, required this.stackTrace});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.errorMessage, required super.stackTrace});
  @override
  List<Object?> get props => [errorMessage, stackTrace];
}

class UnhandleFailure extends Failure {
  const UnhandleFailure(
      {required super.stackTrace, required super.errorMessage});
  @override
  List<Object?> get props => [stackTrace, errorMessage];
}

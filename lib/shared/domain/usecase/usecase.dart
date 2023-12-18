import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
// import 'package:restaurant/core/errors/firebase_exception.dart';

abstract class UseCase<Params, Response> {
  Future<Either<Exception, Response>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

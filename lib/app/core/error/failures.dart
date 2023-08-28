import 'package:equatable/equatable.dart';
import '../values/app_strings.dart';
import 'package:get/get.dart';

abstract class Failure extends Equatable {
  final String message; // Must be translated
  final List<Object?> properties;

  const Failure({
    this.message = AppStrings.failure,
    this.properties = const [],
  });

  @override
  List<Object?> get props => properties;
}

class ServerFailure extends Failure {
  ServerFailure({
    String? message,
  }) : super(
          message: message ?? AppStrings.serverFailure.tr,
        );
}

class LocalFailure extends Failure {
  LocalFailure({
    String? message,
  }) : super(
          message: message ?? AppStrings.localFailure.tr,
        );
}

class NoInternetConnectionFailure extends Failure {
  NoInternetConnectionFailure({
    String? message,
  }) : super(
          message: message ?? AppStrings.noInternetConnection.tr,
        );
}
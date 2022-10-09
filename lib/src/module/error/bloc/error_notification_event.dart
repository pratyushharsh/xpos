part of 'error_notification_bloc.dart';

@immutable
abstract class ErrorNotificationEvent {}

class ValidateStoreSetup extends ErrorNotificationEvent {}

class PeriodicValidatorStartEvent extends ErrorNotificationEvent {}

class PeriodicValidatorStopEvent extends ErrorNotificationEvent {}
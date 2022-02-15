part of 'receipt_display_bloc.dart';

@immutable
abstract class ReceiptDisplayEvent {}

class FetchReceiptDataEvent extends ReceiptDisplayEvent{}

class UpdateReceiptStatusEvent extends ReceiptDisplayEvent{
  final String status;
  UpdateReceiptStatusEvent(this.status);
}
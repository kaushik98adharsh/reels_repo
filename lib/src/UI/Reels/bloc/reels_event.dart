import 'package:freezed_annotation/freezed_annotation.dart';

part 'reels_event.freezed.dart';

@freezed
class ReelsEvent with _$ReelsEvent {
  const factory ReelsEvent.loadReels() = LoadReels;
}

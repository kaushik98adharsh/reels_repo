import 'package:freezed_annotation/freezed_annotation.dart';

part 'reels_state.freezed.dart';

@freezed
class ReelsState with _$ReelsState {
  const factory ReelsState.initial() = Initial;
  const factory ReelsState.loading() = Loading;
  //const factory ReelState.loaded(List<Reel> reels) = Loaded;
  const factory ReelsState.error(String message) = Error;
}

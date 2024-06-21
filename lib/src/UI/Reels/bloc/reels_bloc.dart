import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reels_demo/src/UI/Reels/bloc/reels_event.dart';
import 'package:reels_demo/src/UI/Reels/bloc/reels_state.dart';


class ReelsBloc extends Bloc<ReelsEvent, ReelsState> {
  ReelsBloc() : super(const Initial()) {
    on<ReelsEvent>((event, emit) {
      // TODO: implement event handler
    });
    
  }
}

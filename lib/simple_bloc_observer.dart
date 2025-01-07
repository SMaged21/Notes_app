import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {}

  @override
  void onChange(BlocBase bloc, Change change) {
    // super.onChange(bloc, change);
    debugPrint("change is  $change");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint("bloc is $bloc");
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("bloc is $bloc");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {}
}

import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  Color _bottomContainerColor = const Color(0xffffffff);
  Color get bottomContainerColor => _bottomContainerColor;
  set bottomContainerColor(Color value) {
    _bottomContainerColor = value;
  }

  double _bottomContainerSiz = 100.0;
  double get bottomContainerSiz => _bottomContainerSiz;
  set bottomContainerSiz(double value) {
    _bottomContainerSiz = value;
  }

  dynamic _apiResults;
  dynamic get apiResults => _apiResults;
  set apiResults(dynamic value) {
    _apiResults = value;
  }

  PlayerStruct _playername = PlayerStruct();
  PlayerStruct get playername => _playername;
  set playername(PlayerStruct value) {
    _playername = value;
  }

  void updatePlayernameStruct(Function(PlayerStruct) updateFn) {
    updateFn(_playername);
  }

  dynamic _playerteamApifetch;
  dynamic get playerteamApifetch => _playerteamApifetch;
  set playerteamApifetch(dynamic value) {
    _playerteamApifetch = value;
  }
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}

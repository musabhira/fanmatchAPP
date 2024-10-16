// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlayerStruct extends BaseStruct {
  PlayerStruct({
    String? name,
    int? age,
    String? position,
  })  : _name = name,
        _age = age,
        _position = position;

  // "name" field.
  String? _name;
  String get name => _name ?? 'hh';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 898;
  set age(int? val) => _age = val;

  void incrementAge(int amount) => age = age + amount;

  bool hasAge() => _age != null;

  // "position" field.
  String? _position;
  String get position => _position ?? 'hb';
  set position(String? val) => _position = val;

  bool hasPosition() => _position != null;

  static PlayerStruct fromMap(Map<String, dynamic> data) => PlayerStruct(
        name: data['name'] as String?,
        age: castToType<int>(data['age']),
        position: data['position'] as String?,
      );

  static PlayerStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlayerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'age': _age,
        'position': _position,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'age': serializeParam(
          _age,
          ParamType.int,
        ),
        'position': serializeParam(
          _position,
          ParamType.String,
        ),
      }.withoutNulls;

  static PlayerStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlayerStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        age: deserializeParam(
          data['age'],
          ParamType.int,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PlayerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlayerStruct &&
        name == other.name &&
        age == other.age &&
        position == other.position;
  }

  @override
  int get hashCode => const ListEquality().hash([name, age, position]);
}

PlayerStruct createPlayerStruct({
  String? name,
  int? age,
  String? position,
}) =>
    PlayerStruct(
      name: name,
      age: age,
      position: position,
    );

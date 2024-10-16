// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamModelStruct extends BaseStruct {
  TeamModelStruct({
    String? teamName,
  }) : _teamName = teamName;

  // "teamName" field.
  String? _teamName;
  String get teamName => _teamName ?? '';
  set teamName(String? val) => _teamName = val;

  bool hasTeamName() => _teamName != null;

  static TeamModelStruct fromMap(Map<String, dynamic> data) => TeamModelStruct(
        teamName: data['teamName'] as String?,
      );

  static TeamModelStruct? maybeFromMap(dynamic data) => data is Map
      ? TeamModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'teamName': _teamName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'teamName': serializeParam(
          _teamName,
          ParamType.String,
        ),
      }.withoutNulls;

  static TeamModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamModelStruct(
        teamName: deserializeParam(
          data['teamName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TeamModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamModelStruct && teamName == other.teamName;
  }

  @override
  int get hashCode => const ListEquality().hash([teamName]);
}

TeamModelStruct createTeamModelStruct({
  String? teamName,
}) =>
    TeamModelStruct(
      teamName: teamName,
    );

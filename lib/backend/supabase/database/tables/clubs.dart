import '../database.dart';

class ClubsTable extends SupabaseTable<ClubsRow> {
  @override
  String get tableName => 'clubs';

  @override
  ClubsRow createRow(Map<String, dynamic> data) => ClubsRow(data);
}

class ClubsRow extends SupabaseDataRow {
  ClubsRow(super.data);

  @override
  SupabaseTable get table => ClubsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get leagueId => getField<String>('league_id');
  set leagueId(String? value) => setField<String>('league_id', value);

  String get clubName => getField<String>('club_name')!;
  set clubName(String value) => setField<String>('club_name', value);

  String? get clubIcon => getField<String>('club_icon');
  set clubIcon(String? value) => setField<String>('club_icon', value);
}
